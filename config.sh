#!/usr/bin/env bash

LAST_VERSIONS=${1:-3}

docker pull selenoid/video-recorder:latest-release

docker run --rm -v /var/run/docker.sock:/var/run/docker.sock aerokube/cm:1.0.0 selenoid --last-versions $LAST_VERSIONS --tmpfs 128 --pull > browsers.json
