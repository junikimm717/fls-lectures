FROM debian:bookworm

RUN apt-get update
RUN apt-get install -y \
  vim binutils gcc make curl file xz-utils

RUN mkdir -p /src/rootfs && \
  curl -L\
    "https://distfiles.gentoo.org/releases/arm64/autobuilds/20260118T234557Z/stage3-arm64-musl-20260118T234557Z.tar.xz"\
  | tar -xJ --strip-components=1 -C /src/rootfs

RUN mkdir -p /src/python && \
  curl -L\
    "https://www.python.org/ftp/python/3.14.2/Python-3.14.2.tgz"\
  | tar -xz --strip-components=1 -C /src/python
