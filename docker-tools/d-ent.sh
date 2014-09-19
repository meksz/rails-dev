#!/bin/sh

# $1 - container id
echo $1
PID=$(docker inspect --format '{{.State.Pid}}' $1)
sudo nsenter --target $PID --mount --uts --ipc --net --pid

