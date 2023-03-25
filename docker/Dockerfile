FROM airobotbook/ros2-desktop-ai-robot-book:latest

ENV DEBIAN_FRONTEND=noninteractive

# NVIDIAのドライバをインストールする例 ２) バージョンを指定してインストール
# 参考：https://gitlab.com/nvidia/container-images/driver/-/blob/master/ubuntu18.04/Dockerfile
ARG BASE_URL=https://us.download.nvidia.com/tesla
ARG DRIVER_VERSION=450.80.02
ENV DRIVER_VERSION=$DRIVER_VERSION

RUN cd /tmp && \
    curl -fSsl -O $BASE_URL/$DRIVER_VERSION/NVIDIA-Linux-x86_64-$DRIVER_VERSION.run && \
    sh NVIDIA-Linux-x86_64-$DRIVER_VERSION.run -x && \
    cd NVIDIA-Linux-x86_64-$DRIVER_VERSION* && \
    ./nvidia-installer --silent \
                       --no-kernel-module \
                       --install-compat32-libs \
                       --no-nouveau-check \
                       --no-nvidia-modprobe \
                       --no-rpms \
                       --no-backup \
                       --no-check-for-alternate-installs \
                       --no-libglx-indirect \
                       --no-install-libglvnd && \
    rm -rf /tmp/*


# 必要なファイルのコピー
COPY rootfs /

# XvfbからXorgに書き換え
RUN sed -i  "s|^exec |#exec |" /usr/local/bin/xvfb.sh \
    && echo "/usr/bin/Xorg :1" >> /usr/local/bin/xvfb.sh

ENTRYPOINT ["/startup_nvidia.sh" ]

ENV DEBIAN_FRONTEND=newt


