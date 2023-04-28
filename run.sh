#!/bin/bash
HOST_WS_DIR=/home/ubuntu/catkin_ws/src/ros2-desktop-nvidia/user
CONTAINER_WS_DIR=/home/ubuntu/Desktop/user

docker run -d \
-e http_proxy=${http_proxy} \
-e https_proxy=${https_proxy} \
-e HTTP_PROXY=${HTTP_PROXY} \
-e HTTPS_PROXY=${HTTPS_PROXY} \
-e RESOLUTION=1920x1080 \
-e PULSE_COOKIE=/tmp/pulse/cookie \
-e PULSE_SERVER=unix:/tmp/pulse/native \
-v /run/user/$(id -u)/pulse/native:/tmp/pulse/native \
-v ~/.config/pulse/cookie:/tmp/pulse/cookie:ro \
--name ai_robot_cloud \
-p 5900:5900 \
-p 6080:80 \
--shm-size=512m \
--privileged \
--mount type=bind,src=${HOST_WS_DIR},dst=${CONTAINER_WS_DIR} \
$* \
registry.gitlab.com/coarobo/workspaces/ai-robot-book/ai-robot-cloud:latest
