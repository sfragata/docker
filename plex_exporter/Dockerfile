FROM alpine:3.21

LABEL maintainer="Silvio Fragata <sfragata@gmail.com>"
LABEL url="github.com/sfragata/docker"

RUN apk --no-cache add curl && rm -rf /var/cache/apk/*

RUN artifact=`curl -s https://api.github.com/repos/sfragata/plex_exporter/releases/latest | grep browser_download_url | grep "linux_amd6"| cut -d '"' -f 4` && \
    curl -L $artifact -o /tmp/artifact.tar.gz && tar -xvf /tmp/artifact.tar.gz && ls -la && mv ./plex_exporter /usr/local/bin/plex_exporter &&\ 
    chmod a+rx /usr/local/bin/plex_exporter && rm /tmp/artifact.tar.gz LICENSE README.md

ENTRYPOINT [ "/usr/local/bin/plex_exporter" ]