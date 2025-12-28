#!/usr/bin/env bash
# environment variables affect configure and make
# we configure in $SCRATCHDIR, not the source tree
set -euo pipefail
cd "$SCRATCHDIR"
export CC="my-gcc-binary"
export CFLAGS="-I/my/rootfs/usr/include -nostdinc -static"
export LDFLAGS="-L/my/rootfs/usr/lib -static"
"$SRCDIR/configure" --prefix=/usr
# your working directory now has a Makefile and a bunch of other required artifacts
make "-j$(nproc)"
make "-j$(nproc)" install DESTDIR=/my/rootfs/
