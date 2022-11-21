# Debian or Alpine? Let's try Debian first, just because I know how it works.

FROM debian:11-slim

RUN apt-get update && apt-get upgrade && apt-get install -y \
  bc \
  bison \
  build-essential \
  fakeroot \
  flex \
  git \
  libelf-dev \
  libssl-dev \
  ncurses-dev \
  python3 \
  python3-pip \
  qemu \
  qemu-system-gui \
  qemu-system-x86 \
  qemu-utils \
  xz-utils

WORKDIR /work
