#!/usr/bin/env bash
# bad script
set -euo pipefail
# what happens if your working directory is not the repository root?
pip install -e ./requirements.txt
python3 ./devserver.py
