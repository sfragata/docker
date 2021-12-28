FROM alpine:3.15.0

LABEL maintainer="Silvio Fragata <sfragata@gmail.com>"
LABEL url="github.com/sfragata/docker"

ARG USER_ID=1000
ARG GROUP_ID=1000

RUN apk --no-cache add curl ffmpeg python3 && \ 
    rm -rf /var/cache/apk/*

RUN addgroup -g ${GROUP_ID} ytdlp && \
    adduser -D -h /home/ytdlp -G ytdlp -u ${USER_ID} ytdlp

RUN curl -L https://github.com/yt-dlp/yt-dlp/releases/latest/download/yt-dlp -o /usr/local/bin/yt-dlp && \ 
    chmod a+rx /usr/local/bin/yt-dlp

USER ytdlp

WORKDIR /home/ytdlp

VOLUME [ "/home/ytdlp" ]

ENTRYPOINT [ "yt-dlp" ]