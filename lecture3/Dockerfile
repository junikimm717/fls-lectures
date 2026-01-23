FROM ghcr.io/junikimm717/fls-grading/dev:latest

RUN apt-get install -y python3

RUN mkdir -p /src/rootfs && \
  curl -L\
    "https://dl-cdn.alpinelinux.org/alpine/v3.23/releases/aarch64/alpine-minirootfs-3.23.2-$(arch).tar.gz"\
  | tar -xz --strip-components=1 -C /src/rootfs

WORKDIR /workspace
CMD [ "/bin/bash" ]
