#!/usr/bin/env bash
# we configure in $SCRATCHDIR for out of tree build
set -euo pipefail
cd "$SCRATCHDIR"
export CC="my-gcc-binary"
export CFLAGS="-I/my/rootfs/usr/include -nostdinc -static"
export LDFLAGS="-L/my/rootfs/usr/lib -static"
# configure will pass above compile flags into Makefile
"$SRCDIR/configure" --prefix=/usr
# workdir now has Makefile
make "-j$(nproc)"
make "-j$(nproc)" install DESTDIR=/my/rootfs/
