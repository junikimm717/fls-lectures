#!/usr/bin/env bash
# exit if any part encounters a bad exit code or undefined env var
set -euo pipefail
# parent directory of our script
DIR="$(realpath "$(dirname "$0" )" )"
# -p for idempotency, our working directory is now deterministic.
mkdir -p "$DIR/out" && cd "$DIR/out"
# test for existence first.
test -r text.txt && grep foo text.txt > result
