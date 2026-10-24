#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
BIN="$(cd "$(dirname "$1")" && pwd)/$(basename "$1")"
TAG="$2"
REP="${3:-5}"
OUT="$ROOT/results/$TAG"
mkdir -p "$OUT"

echo "[bench] $TAG ($REP repeats)"

: > "$OUT/time.txt"
for i in $(seq 1 "$REP"); do
  { echo "=== run $i ==="; /usr/bin/time -v "$BIN" ; } >> "$OUT/time.txt" 2>&1
done

: > "$OUT/perf_stat.txt"
for i in $(seq 1 "$REP"); do
  { echo "=== run $i ==="; perf stat -d "$BIN" ; } >> "$OUT/perf_stat.txt" 2>&1
done

WORK="$HOME/.cache/lab/$TAG"
mkdir -p "$WORK"
cd "$WORK"
perf record -F 999 -g -o perf.data -- "$BIN" > record.log 2>&1
perf report -i perf.data --stdio --no-children --percent-limit 0.5 \
    > "$OUT/perf_report_self.txt" 2>&1
perf report -i perf.data --stdio --children --percent-limit 0.5 \
    > "$OUT/perf_report_children.txt" 2>&1
perf script -i perf.data > perf.script 2>/dev/null || true
cp perf.data  "$OUT/perf.data"
cp perf.script "$OUT/perf.script"

echo "[bench] done -> $OUT"
