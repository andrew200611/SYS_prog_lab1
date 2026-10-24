#!/usr/bin/env python3
import argparse
import ctypes
import ctypes.wintypes as wt
import statistics
import subprocess
import sys
import threading
import time
from pathlib import Path

GUID_DEVCLASS_BATTERY = "{72631E54-78A4-11D0-BCF7-00AA00B7B32A}"
DIGCF_PRESENT = 0x02
DIGCF_DEVICEINTERFACE = 0x10
IOCTL_BATTERY_QUERY_TAG = 0x294040
IOCTL_BATTERY_QUERY_INFORMATION = 0x294044
IOCTL_BATTERY_QUERY_STATUS = 0x29404C
BATTERY_INFORMATION_LEVEL = 0
GENERIC_READ = 0x80000000
GENERIC_WRITE = 0x40000000
FILE_SHARE_READ = 1
FILE_SHARE_WRITE = 2
OPEN_EXISTING = 3


class GUID(ctypes.Structure):
    _fields_ = [("Data1", wt.DWORD), ("Data2", wt.WORD), ("Data3", wt.WORD),
                ("Data4", ctypes.c_ubyte * 8)]


class SP_DEVICE_INTERFACE_DATA(ctypes.Structure):
    _fields_ = [("cbSize", wt.DWORD), ("InterfaceClassGuid", GUID),
                ("Flags", wt.DWORD), ("Reserved", ctypes.c_void_p)]


class BATTERY_QUERY_INFORMATION(ctypes.Structure):
    _fields_ = [("BatteryTag", wt.ULONG), ("InformationLevel", wt.ULONG),
                ("AtRate", wt.LONG)]


class BATTERY_INFORMATION(ctypes.Structure):
    _fields_ = [("Capabilities", wt.ULONG), ("Technology", ctypes.c_ubyte),
                ("Reserved", ctypes.c_ubyte * 3), ("Chemistry", ctypes.c_ubyte * 4),
                ("DesignedCapacity", wt.ULONG), ("FullChargedCapacity", wt.ULONG),
                ("DefaultAlert1", wt.ULONG), ("DefaultAlert2", wt.ULONG),
                ("CriticalBias", wt.ULONG), ("CycleCount", wt.ULONG)]


class BATTERY_WAIT_STATUS(ctypes.Structure):
    _fields_ = [("BatteryTag", wt.ULONG), ("Timeout", wt.ULONG),
                ("PowerState", wt.ULONG), ("LowCapacity", wt.ULONG),
                ("HighCapacity", wt.ULONG)]


class BATTERY_STATUS(ctypes.Structure):
    _fields_ = [("PowerState", wt.ULONG), ("Capacity", wt.ULONG),
                ("Voltage", wt.ULONG), ("Rate", wt.LONG)]


def _guid_from_string(s):
    ole32 = ctypes.windll.ole32
    g = GUID()
    if ole32.CLSIDFromString(ctypes.c_wchar_p(s), ctypes.byref(g)) != 0:
        raise OSError("CLSIDFromString failed")
    return g


class Battery:
    def __init__(self):
        setupapi = ctypes.WinDLL("setupapi", use_last_error=True)
        kernel32 = ctypes.WinDLL("kernel32", use_last_error=True)
        self._k32 = kernel32
        guid = _guid_from_string(GUID_DEVCLASS_BATTERY)

        hdev = setupapi.SetupDiGetClassDevsW(
            ctypes.byref(guid), None, None, DIGCF_PRESENT | DIGCF_DEVICEINTERFACE)
        if hdev == ctypes.c_void_p(-1).value:
            raise OSError("SetupDiGetClassDevs failed")

        did = SP_DEVICE_INTERFACE_DATA()
        did.cbSize = ctypes.sizeof(did)
        path = None
        i = 0
        while setupapi.SetupDiEnumDeviceInterfaces(
                hdev, None, ctypes.byref(guid), i, ctypes.byref(did)):
            need = wt.DWORD(0)
            setupapi.SetupDiGetDeviceInterfaceDetailW(
                hdev, ctypes.byref(did), None, 0, ctypes.byref(need), None)
            buf = ctypes.create_string_buffer(need.value)
            ctypes.cast(buf, ctypes.POINTER(wt.DWORD))[0] = (
                8 if ctypes.sizeof(ctypes.c_void_p) == 8 else 6)
            if setupapi.SetupDiGetDeviceInterfaceDetailW(
                    hdev, ctypes.byref(did), buf, need.value,
                    ctypes.byref(need), None):
                path = ctypes.wstring_at(ctypes.addressof(buf) + 4)
                break
            i += 1

        if not path:
            raise OSError("no battery device interface found")

        self.handle = kernel32.CreateFileW(
            path, GENERIC_READ | GENERIC_WRITE, FILE_SHARE_READ | FILE_SHARE_WRITE,
            None, OPEN_EXISTING, 0, None)
        if self.handle in (None, ctypes.c_void_p(-1).value, -1):
            raise OSError("CreateFile on battery failed")

        tag = wt.ULONG(0)
        self._ioctl(IOCTL_BATTERY_QUERY_TAG, ctypes.byref(tag), ctypes.sizeof(tag),
                    ctypes.byref(tag), ctypes.sizeof(tag))
        self.tag = tag.value

        q = BATTERY_QUERY_INFORMATION(self.tag, BATTERY_INFORMATION_LEVEL, 0)
        info = BATTERY_INFORMATION()
        self._ioctl(IOCTL_BATTERY_QUERY_INFORMATION, ctypes.byref(q),
                    ctypes.sizeof(q), ctypes.byref(info), ctypes.sizeof(info))
        self.full_mwh = info.FullChargedCapacity

    def _ioctl(self, code, inbuf, insize, outbuf, outsize):
        ret = wt.DWORD(0)
        ok = self._k32.DeviceIoControl(
            self.handle, code, inbuf, insize, outbuf, outsize,
            ctypes.byref(ret), None)
        if not ok:
            raise ctypes.WinError(ctypes.get_last_error())
        return ret.value

    def status(self):
        w = BATTERY_WAIT_STATUS(self.tag, 0, 0, 0, 0)
        st = BATTERY_STATUS()
        self._ioctl(IOCTL_BATTERY_QUERY_STATUS, ctypes.byref(w), ctypes.sizeof(w),
                    ctypes.byref(st), ctypes.sizeof(st))
        return st

    def rate_mw(self):
        return self.status().Rate


class Sampler(threading.Thread):
    def __init__(self, battery, period=0.5):
        super().__init__(daemon=True)
        self.bat = battery
        self.period = period
        self.samples = []
        self._stop = threading.Event()

    def run(self):
        t0 = time.monotonic()
        while not self._stop.is_set():
            try:
                mw = self.bat.rate_mw()
            except OSError:
                mw = None
            self.samples.append((time.monotonic() - t0, mw))
            self._stop.wait(self.period)

    def stop(self):
        self._stop.set()
        self.join(timeout=2)


def window_stats(samples, t_from, t_to):
    vals = [-mw for t, mw in samples if mw is not None and t_from <= t <= t_to]
    if not vals:
        return None
    return {"n": len(vals), "mean": statistics.fmean(vals),
            "median": statistics.median(vals),
            "min": min(vals), "max": max(vals)}


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--distro", default="Ubuntu")
    ap.add_argument("--wsl-dir", default="/mnt/d/Uni/SYS_prog/imgproc-perf-lab")
    ap.add_argument("--repo", default=r"D:\Uni\SYS_prog\imgproc-perf-lab")
    ap.add_argument("--baseline", type=float, default=20.0)
    ap.add_argument("--runs", type=int, default=3)
    ap.add_argument("--iters", type=int, default=1)
    ap.add_argument("--period", type=float, default=0.5)
    ap.add_argument("--targets", nargs="+", required=True)
    ap.add_argument("--out", default=None)
    args = ap.parse_args()

    bat = Battery()
    st = bat.status()
    ac = bool(st.PowerState & 0x1)
    print(f"[bat] full={bat.full_mwh} mWh cap={st.Capacity} mWh "
          f"rate={st.Rate} mW AC={ac}")
    if ac:
        print("[bat] WARNING: on AC, battery reports 0 mW — unplug the charger")

    sampler = Sampler(bat, args.period)
    sampler.start()
    time.sleep(1.0)

    print(f"[baseline] {args.baseline:.0f}s idle ...", flush=True)
    t0 = time.monotonic() - sampler.samples[0][0]
    time.sleep(args.baseline)
    t1 = time.monotonic() - sampler.samples[0][0]
    base = window_stats(sampler.samples, t0, t1)
    p_idle = base["mean"] if base else 0.0
    print(f"[baseline] P_idle = {p_idle:.0f} mW")

    rows = []
    for spec in args.targets:
        tag, rel = spec.split(":", 1)
        inner = (f"cd {args.wsl_dir} && for i in $(seq 1 {args.iters}); "
                 f"do ./{rel} > /dev/null; done")
        cmd = ["wsl.exe", "-d", args.distro, "--", "bash", "-lc", inner]
        for r in range(args.runs):
            ta = time.monotonic() - sampler.samples[0][0]
            out = subprocess.run(cmd, capture_output=True, text=True)
            tb = time.monotonic() - sampler.samples[0][0]
            wall = tb - ta
            w = window_stats(sampler.samples, ta, tb)
            p = w["mean"] if w else float("nan")
            e_sys = p * wall / 1000.0
            e_prog = max(p - p_idle, 0.0) * wall / 1000.0
            rows.append({"tag": tag, "run": r + 1, "wall_s": wall, "P_mW": p,
                         "E_sys_J": e_sys, "E_prog_J": e_prog,
                         "samples": w["n"] if w else 0})
            print(f"  {tag} run{r+1}: {wall:6.2f}s  P={p:7.0f} mW  "
                  f"E_sys={e_sys:7.1f} J  E_prog={e_prog:7.1f} J")
    sampler.stop()

    out_path = Path(args.out or (Path(args.repo) / "results" / "energy.csv"))
    out_path.parent.mkdir(parents=True, exist_ok=True)
    with out_path.open("w", encoding="utf-8") as f:
        f.write("tag,run,wall_s,P_mW,E_sys_J,E_prog_J,samples,iters\n")
        for r in rows:
            f.write(f"{r['tag']},{r['run']},{r['wall_s']:.3f},{r['P_mW']:.1f},"
                    f"{r['E_sys_J']:.1f},{r['E_prog_J']:.1f},{r['samples']},"
                    f"{args.iters}\n")
        f.write(f"idle,0,{args.baseline:.1f},{p_idle:.1f},,,0,{args.iters}\n")
    print(f"[out] {out_path}")


if __name__ == "__main__":
    sys.exit(main())
