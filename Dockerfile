FROM debian:8
MAINTAINER YsiCing Zheng <root@ysicing.net>

# setting system
ENV TZ "Asia/Shanghai"
enV TERM xterm

ADD sources.list /etc/apt/sources.list

RUN \
    DEBIAN_FRONTEND=noninteractive apt update && \
    DEBIAN_FRONTEND=noninteractive apt install -y \
        python3.6 \
        python3-apt \
        python3-pip \
        python3-dev \
        libffi-dev \
        build-essential \
        redis-server \
        curl wget sudo nano \
        ca-certificates \
        unzip \
        apt-transport-https && \
        apt upgrade -y && \
	apt dist-upgrade -y && \
        rm -rf /var/lib/apt/lists/*
