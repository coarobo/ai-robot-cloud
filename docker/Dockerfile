FROM registry.gitlab.com/coarobo/workspaces/ai-robot-book/ai-robot-desktop/ai-robot-image:latest:latest

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

# 解像度の反映コマンド
RUN echo "sh /usr/local/bin/xrandr_exec.sh" >> /home/ubuntu/.bashrc

ENTRYPOINT ["/startup_nvidia.sh" ]

ENV DEBIAN_FRONTEND=newt


