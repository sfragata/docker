FROM node:slim

LABEL maintainer="sfragata@gmail.com"
LABEL name="Silvio Fragata"
LABEL url="github.com/sfragata"

RUN npm install forever -g

RUN mkdir -p /opt/nodejs

COPY start.sh /usr/bin/start.sh
