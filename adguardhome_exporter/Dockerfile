FROM dhi.io/alpine-base:3.23-dev

LABEL maintainer="Silvio Fragata <sfragata@gmail.com>"
LABEL url="github.com/sfragata/docker"

RUN apk --no-cache add curl && rm -rf /var/cache/apk/*

RUN artifact=`curl -s https://api.github.com/repos/sfragata/adguardhome_exporter/releases/latest | grep browser_download_url | grep "linux_amd64" | cut -d '"' -f 4` && \
    curl -L $artifact -o $HOME/artifact.tar.gz && tar -xvf $HOME/artifact.tar.gz && mkdir -p /usr/local/bin && mv ./adguardhome_exporter /usr/local/bin/adguardhome_exporter &&\ 
    chmod a+rx /usr/local/bin/adguardhome_exporter && rm $HOME/artifact.tar.gz LICENSE README.md

ENTRYPOINT [ "/usr/local/bin/adguardhome_exporter" ]