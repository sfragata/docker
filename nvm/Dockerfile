FROM ubuntu:latest

LABEL maintainer="Silvio Fragata <sfragata@gmail.com>"
LABEL url="github.com/sfragata/docker"

ARG NVM_VERSION=v0.39.5

RUN apt-get update && apt -y install curl && rm -rf /var/lib/apt/lists/*
RUN useradd -ms /bin/bash nvmuser

WORKDIR /home/nvmuser

USER nvmuser

RUN mkdir -p /home/nvmuser/code && curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/${NVM_VERSION}/install.sh | bash

COPY .bash_profile /home/nvmuser/

RUN echo ". /home/nvmuser/.bash_profile" >> /home/nvmuser/.bashrc

WORKDIR /home/nvmuser/code
