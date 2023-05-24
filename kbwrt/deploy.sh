#!/bin/sh

set -ex 

docker buildx build \
  -t docker.io/pastorrob/kernel-build:openwrt \
  -t kernel-build:openwrt \
  .

docker run -it --rm kernel-build:openwrt echo hello world
docker push docker.io/pastorrob/kernel-build:openwrt 
