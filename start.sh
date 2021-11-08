#!/bin/sh

exec docker run \
    --rm --tty --interactive \
    --name=wireguard-socks-proxy \
    --cap-add=NET_ADMIN \
    --publish 127.0.0.1:1080:1080 \
    --volume "$(realpath "$1"):/etc/wireguard/:ro" \
    ghcr.io/k0in/docker-wireguard-socks-proxy:main
