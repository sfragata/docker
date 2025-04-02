FROM alpine:3.21

LABEL maintainer="Silvio Fragata <sfragata@gmail.com>"
LABEL url="github.com/sfragata/docker"

RUN apk --no-cache add ansible && \ 
    rm -rf /var/cache/apk/*

WORKDIR /ansible
