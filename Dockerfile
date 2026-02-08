FROM node:22-slim
# apt-get の対話プロンプトを抑止（ビルドが止まらないように）
ENV DEBIAN_FRONTEND=noninteractive \
    LESSCHARSET=utf-8

# 必要な依存をインストール
RUN set -x \
    && apt-get update \
    && apt-get install -y git curl unzip jq vim \
    && npm install -g expo-cli \
    && apt-get clean

WORKDIR /usr/src/app
