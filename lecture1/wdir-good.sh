#!/usr/bin/env bash
set -euo pipefail
# good script
DIR="$(realpath "$(dirname "$0" )" )"
cd "$DIR"
# now we can run this knowing we are in the repository root.
pip install -e ./requirements.txt
python3 ./devserver.py
