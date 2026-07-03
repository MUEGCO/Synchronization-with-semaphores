#!/usr/bin/env bash
set -euo pipefail

repo_root="$(cd "$(dirname "$0")/.." && pwd)"
cd "$repo_root"

make clean >/dev/null
make >/dev/null

output="$(./bin/semaphore_lab 2>&1 || true)"

echo "$output"

if [[ "$output" == *"TODO:"* ]]; then
    echo "visible test: starter code still contains TODO behavior" >&2
    exit 1
fi

if [[ "$output" == *"[A[B]"* || "$output" == *"[B[A]"* ]]; then
    echo "visible test: output shows an unsynchronized critical section" >&2
    exit 1
fi

if [[ "$output" != *"done"* ]]; then
    echo "visible test: missing completion line" >&2
    exit 1
fi

echo "visible test: passed"