FROM node:22-slim
RUN set -x \
    && apt update \
    && apt upgrade -y \
    && apt install -y git
ENV LESSCHARSET=utf-8
# 必要な依存をインストール
RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
    && apt-get install -y curl unzip openjdk-17-jdk android-sdk adb \
    && npm install -g expo-cli \
    && apt-get clean

WORKDIR /usr/src/app


