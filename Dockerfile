# Debian or Alpine? Let's try Debian first, just because I know how it works.

FROM debian:11

RUN apt-get update && apt-get upgrade
RUN apt-get install -y \
  git fakeroot build-essential ncurses-dev xz-utils libssl-dev \
  bc flex libelf-dev bison
RUN apt-get install -y python3 python3-pip
RUN python3 -m pip install git+https://github.com/systemd/mkosi.git
RUN apt install -y qemu qemu-utils qemu-system-x86 qemu-system-gui
WORKDIR /work
#ADD https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.9.6.tar.xz .
#RUN tar xvf linux-5.9.6.tar.xz
#WORKDIR linux-5.9.6
#COPY config.config .config
#RUN make -j4
