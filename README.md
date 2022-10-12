# kernel-build

A docker image that contains everything required to build a kernel.

## Usage

```sh
curl https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.19.14.tar.xz
tar xf linux-5.19.14.tar.xz
cd linux-5.19.14
cp ../config.config .config
docker -it --rm -v $PWD:/work kernel-build make menuconfig
docker -it --rm -v $PWD:/work kernel-build make 
docker -it --rm -v $PWD:/work kernel-build make install
```

## Trivial Initramfs

https://lyngvaer.no/log/create-linux-initramfs

## Run

```
docker run \
 -v /home/rob/src/kernel-build/linux-5.19.14:/work \
 -it --rm \
 kernel-build qemu-system-x86_64 \
  -nographic \
  -kernel ./arch/x86/boot/bzImage \
  -append console=ttyS0 \
 -initrd ./initramfz
```
