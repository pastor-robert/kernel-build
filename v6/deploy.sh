#!/bin/sh

set -ex 

docker buildx build \
  -t docker.io/pastorrob/kernel-build:6 \
  -t docker.io/pastorrob/kernel-build:6.0 \
  -t kernel-build:6 \
  .

docker run -it --rm kernel-build:6 echo hello world
docker push docker.io/pastorrob/kernel-build:6 
docker push docker.io/pastorrob/kernel-build:6.0

