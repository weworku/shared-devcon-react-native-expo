FROM node:22-slim

# 必要な依存をインストール
RUN set -x \
    && apt-get update && export DEBIAN_FRONTEND=noninteractive \
    && apt-get install -y git curl unzip jq vim \
    && npm install -g expo-cli \
    && apt-get clean

ENV LESSCHARSET=utf-8
WORKDIR /usr/src/app


