FROM ubuntu:18.04

LABEL maintainer="sfragata@gmail.com"

RUN apt update && DEBIAN_FRONTEND=noninteractive && apt install -y software-properties-common && \
    apt-add-repository --yes --update ppa:ansible/ansible && \
    apt install -y ansible && apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
