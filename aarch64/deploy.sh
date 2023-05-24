#!/bin/sh

set -ex 

docker buildx build \
  -t docker.io/pastorrob/kernel-build:aarch64 \
  -t docker.io/pastorrob/kernel-build:arm64 \
  -t kernel-build:aarch64 \
  .

docker run -it --rm kernel-build:aarch64 echo hello world
docker push docker.io/pastorrob/kernel-build:aarch64 
docker push docker.io/pastorrob/kernel-build:arm64

