FROM ubuntu

MAINTAINER Silvio Fragata Silva "sfragata@gmail.com"

RUN 

RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -q -y software-properties-common \ 
    && apt-add-repository ppa:webupd8team/java -y && apt-get update && echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | debconf-set-selections && \
    DEBIAN_FRONTEND=noninteractive apt-get install oracle-java8-installer -y -q && \
    apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# JAVA_HOME variable
ENV JAVA_HOME /usr/lib/jvm/java-8-oracle
