#!/bin/sh

set -ex 

TAG=docker.io/pastorrob/kernel-build:2.6

docker buildx build --platform linux/amd64 -t $TAG .
docker run -it --rm $TAG echo hello world
docker push $TAG
