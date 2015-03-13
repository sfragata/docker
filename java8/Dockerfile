FROM ubuntu:14.04

MAINTAINER Silvio Fragata Silva "sfragata@gmail.com"

RUN apt-get update 
RUN DEBIAN_FRONTEND=noninteractive apt-get install -q -y software-properties-common

RUN apt-add-repository ppa:webupd8team/java -y
RUN apt-get update
RUN echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | debconf-set-selections
RUN DEBIAN_FRONTEND=noninteractive apt-get install oracle-java8-installer -y -q
RUN apt-get clean

# JAVA_HOME variable
ENV JAVA_HOME /usr/lib/jvm/java-8-oracle
