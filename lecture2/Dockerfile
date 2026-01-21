FROM debian:bookworm

RUN apt-get update
RUN apt-get install -y \
  vim binutils gcc make curl file

RUN mkdir -p /src/rootfs && \
  curl -L\
    "https://dl-cdn.alpinelinux.org/alpine/v3.23/releases/aarch64/alpine-minirootfs-3.23.2-$(arch).tar.gz"\
  | tar -xz --strip-components=1 -C /src/rootfs

RUN mkdir -p /src/python && \
  curl -L\
    "https://www.python.org/ftp/python/3.14.2/Python-3.14.2.tgz"\
  | tar -xz --strip-components=1 -C /src/python
