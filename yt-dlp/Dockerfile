FROM alpine:3.15.0

LABEL maintainer="sfragata@gmail.com"
LABEL name="Silvio Fragata"
LABEL url="github.com/sfragata"

RUN apk --no-cache add curl ffmpeg python3 && \ 
    rm -rf /var/cache/apk/*

RUN adduser --system --home /home/ytdlp ytdlp

RUN curl -L https://github.com/yt-dlp/yt-dlp/releases/latest/download/yt-dlp -o /usr/local/bin/yt-dlp && \ 
    chmod a+rx /usr/local/bin/yt-dlp

USER ytdlp

WORKDIR /home/ytdlp

VOLUME [ "/home/ytdlp" ]

ENTRYPOINT [ "yt-dlp" ]