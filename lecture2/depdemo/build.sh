#!/usr/bin/env bash
set -euo pipefail
DIR="$(realpath "$(dirname "$0" )" )"
cd "$DIR"

CFLAGS="-Os -Wall -I$DIR"
LDFLAGS="-L$DIR -static"
gcc $CFLAGS -c helloworld.c -o helloworld.o
ar rcs libhelloworld.a helloworld.o
gcc $CFLAGS $LDFLAGS main.c -lhelloworld -o main
