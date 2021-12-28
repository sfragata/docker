FROM node:slim

LABEL maintainer="Silvio Fragata <sfragata@gmail.com>"
LABEL url="github.com/sfragata/docker"

RUN npm install forever -g

RUN mkdir -p /opt/nodejs

COPY start.sh /usr/bin/start.sh
