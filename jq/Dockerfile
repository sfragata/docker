FROM alpine:3.18.3

LABEL maintainer="Silvio Fragata <sfragata@gmail.com>"
LABEL url="github.com/sfragata/docker"

RUN apk --update add --no-cache jq && \ 
    rm -rf /var/cache/apk/*

RUN adduser -S jq-user

USER jq-user

ENTRYPOINT ["jq"]