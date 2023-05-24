# Debian or Alpine? Let's try Debian first, just because I know how it works.

FROM debian:11-slim

RUN apt-get update && apt-get upgrade -y && apt-get install -y \
  bison \
  build-essential \
  clang \
  file \
  flex \
  g++ \
  gawk \
  gcc-multilib \
  gettext \
  git \
  g++-multilib \
  libncurses-dev \
  libssl-dev \
  python3-distutils \
  rsync \
  unzip \
  wget \
  zlib1g-dev \
  && rm -rf /var/lib/apt/lists/*


WORKDIR /work
