FROM alpine:3.15.0

LABEL maintainer="sfragata@gmail.com"
LABEL name="Silvio Fragata"
LABEL url="github.com/sfragata"

RUN apk --no-cache add ansible && \ 
    rm -rf /var/cache/apk/*

WORKDIR /ansible
