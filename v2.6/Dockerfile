# Debian or Alpine? Let's try Debian first, just because I know how it works.

FROM --platform=linux/amd64 debian/eol:jessie-slim

RUN apt-get update && apt install -y debian-archive-keyring

RUN apt-get update && apt-get upgrade -y --allow-unauthenticated && apt-get install -y --allow-unauthenticated \
  build-essential \
  ncurses-dev

WORKDIR /work
