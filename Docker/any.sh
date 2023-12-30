#!/bin/bash

xhost +local:docker inspect --format='{{ .Config.Hostname }}' \
jacknorthrup/qbasic-docker; \
docker run -it -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix \
jacknorthrup/qbasic-docker /bin/bash