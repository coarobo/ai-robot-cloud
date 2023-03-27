#!/bin/sh

#exec /usr/bin/Xvfb :1 -screen 0 1920x1080x24

if [ -f "/tmp/.X1-lock" ]; then
  rm /tmp/.X1-lock
  echo "Removed /tmp/.X1-lock"
else
  echo "/tmp/.X1-lock does not exist"
fi

/usr/bin/Xorg :1
