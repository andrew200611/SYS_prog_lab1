#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
SRC="$ROOT/src/imgproc.cpp"
BIN="$ROOT/build"
ASM="$ROOT/asm"
PASSES="${PASSES:-200}"

mkdir -p "$BIN" "$ASM" "$ROOT/results"

COMMON="-g -fno-omit-frame-pointer -DPASSES=$PASSES"

echo "[build] PASSES=$PASSES"

g++ -O0 $COMMON -o "$BIN/imgproc_O0" "$SRC" -lm
g++ -O2 $COMMON -o "$BIN/imgproc_O2" "$SRC" -lm
g++ -O3 -march=native $COMMON -o "$BIN/imgproc_O3" "$SRC" -lm
g++ -O3 -march=native -mprefer-vector-width=512 $COMMON \
    -o "$BIN/imgproc_O3_avx512" "$SRC" -lm

g++ -O0 -S -masm=intel -fno-asynchronous-unwind-tables -DPASSES="$PASSES" \
    -o "$ASM/imgproc_O0.s" "$SRC"
g++ -O3 -march=native -S -masm=intel -fno-asynchronous-unwind-tables -DPASSES="$PASSES" \
    -o "$ASM/imgproc_O3.s" "$SRC"
g++ -O3 -march=native -mprefer-vector-width=512 -S -masm=intel \
    -fno-asynchronous-unwind-tables -DPASSES="$PASSES" \
    -o "$ASM/imgproc_O3_avx512.s" "$SRC"

g++ -O3 -march=native -fopt-info-vec-all -DPASSES="$PASSES" -c "$SRC" \
    -o /dev/null 2> "$ROOT/results/vectorization_O3.txt" || true
g++ -O3 -march=native -mprefer-vector-width=512 -fopt-info-vec-optimized \
    -DPASSES="$PASSES" -c "$SRC" -o /dev/null \
    2> "$ROOT/results/vectorization_O3_avx512.txt" || true

{
  for b in imgproc_O0 imgproc_O2 imgproc_O3 imgproc_O3_avx512; do
    printf '%-20s zmm=%-5s ymm=%-5s xmm=%-5s\n' "$b" \
      "$(objdump -d "$BIN/$b" | grep -c '%zmm' || true)" \
      "$(objdump -d "$BIN/$b" | grep -c '%ymm' || true)" \
      "$(objdump -d "$BIN/$b" | grep -c '%xmm' || true)"
  done
} | tee "$ROOT/results/isa_summary.txt"

echo "[build] ok -> $BIN"
