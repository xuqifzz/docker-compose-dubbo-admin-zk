#!/bin/bash
# 安装docker
curl -fsSL https://get.docker.com -o get-docker.sh
sh get-docker.sh

systemctl start docker
# 安装docker-compose

curl -L "https://github.com/docker/compose/releases/download/1.24.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose

# 制作镜像
docker build -t dubbo-admin:1.0 .

# 启动docker-compose 
docker-compose up

