FROM alpine:3.19.1

LABEL maintainer="Silvio Fragata <sfragata@gmail.com>"
LABEL url="github.com/sfragata/docker"

ARG USER_ID=1000
ARG GROUP_ID=1000

RUN apk --no-cache add libheif libheif-tools && \ 
    rm -rf /var/cache/apk/*

RUN addgroup -g ${GROUP_ID} heif-convert && \
    adduser -D -h /home/heif-convert -G heif-convert -u ${USER_ID} heif-convert

COPY list-heif /usr/local/bin/list-heif

COPY convert-heif /usr/local/bin/convert-heif

RUN chmod 755 /usr/local/bin/list-heif /usr/local/bin/convert-heif

USER heif-convert

WORKDIR /home/heif-convert

VOLUME [ "/home/heif-convert" ]