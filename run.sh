#!/bin/bash
docker run \
-e RESOLUTION=1920x1080 \
-e PULSE_COOKIE=/tmp/pulse/cookie \
-e PULSE_SERVER=unix:/tmp/pulse/native \
-v /run/user/$(id -u)/pulse/native:/tmp/pulse/native \
-v ~/.config/pulse/cookie:/tmp/pulse/cookie:ro \
--name ai_robot_book_nvidia \
-p 5900:5900 \
-p 6080:80 \
--shm-size=512m \
--privileged \
$* \
airobotbook/ros2-desktop-ai-robot-book-nvidia:latest
