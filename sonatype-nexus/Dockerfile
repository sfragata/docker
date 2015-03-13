FROM sfragata/java8

MAINTAINER Silvio Fragata Silva "sfragata@gmail.com"

#create folders
RUN mkdir -p /opt/sonatype-nexus /opt/sonatype-work

#get nexus install
RUN wget -O /tmp/nexus-2.11.2-04-bundle.tar.gz http://download.sonatype.com/nexus/oss/nexus-2.11.2-04-bundle.tar.gz
RUN tar xzvf /tmp/nexus-2.11.2-04-bundle.tar.gz -C /opt/sonatype-nexus --strip-components=1
RUN rm /tmp/nexus-2.11.2-04-bundle.tar.gz

#create user nexus
RUN useradd --user-group --system --home-dir /opt/sonatype-nexus nexus
RUN chown -R nexus:nexus /opt/sonatype-work /opt/sonatype-nexus

ADD start_nexus.sh /opt/sonatype-nexus/bin/start_nexus.sh

#start nexus
CMD ["/opt/sonatype-nexus/bin/start_nexus.sh"]

VOLUME /opt/sonatype-work
VOLUME /opt/sonatype-nexus

EXPOSE 8081