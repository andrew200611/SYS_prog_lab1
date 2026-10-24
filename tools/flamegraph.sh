#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
TAG="$1"
OUT="$ROOT/results/$TAG"
FG="$ROOT/vendor/FlameGraph"

if [ ! -d "$FG" ]; then
  echo "[fg] cloning FlameGraph ..."
  mkdir -p "$ROOT/vendor"
  git clone --depth 1 https://github.com/brendangregg/FlameGraph "$FG" >/dev/null 2>&1
fi

echo "[fg] $TAG"
"$FG/stackcollapse-perf.pl" "$OUT/perf.script" > "$OUT/stacks.folded"
"$FG/flamegraph.pl" \
    --title "imgproc $TAG" \
    --countname samples \
    "$OUT/stacks.folded" > "$OUT/flamegraph.svg"

echo "[fg] -> $OUT/flamegraph.svg"
