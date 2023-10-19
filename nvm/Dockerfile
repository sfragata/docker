FROM ubuntu:latest

ARG NVM_VERSION=v0.39.5

RUN apt-get update && apt -y install curl 
RUN useradd -ms /bin/bash nvmuser

WORKDIR /home/nvmuser

USER nvmuser

RUN mkdir -p /home/nvmuser/code && curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/${NVM_VERSION}/install.sh | bash

COPY .bash_profile /home/nvmuser/

RUN echo ". /home/nvmuser/.bash_profile" >> /home/nvmuser/.bashrc

WORKDIR /home/nodeuser/code
