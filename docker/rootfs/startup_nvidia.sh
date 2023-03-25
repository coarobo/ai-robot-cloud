#!/bin/bash

# VNC解像度設定
if [ -n "$RESOLUTION" ]; then
    nvidia-xconfig --no-use-edid-dpi -a --virtual=$RESOLUTION --allow-empty-initial-configuration --enable-all-gpus --busid `nvidia-xconfig --query-gpu-info | grep BusID | awk '{print substr($0, index($0, " : ")+3)}'`
fi

exec /startup.sh
