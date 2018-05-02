FROM sfragata/java8

MAINTAINER Silvio Fragata da Silva "sfragata@gmail.com"

#create folders
RUN mkdir -p /opt/sonatype-nexus /opt/sonatype-work

#get nexus install
RUN wget -O /tmp/nexus-latest-bundle.tar.gz http://www.sonatype.org/downloads/nexus-latest-bundle.tar.gz && \
	tar xzvf /tmp/nexus-latest-bundle.tar.gz -C /opt/sonatype-nexus --strip-components=1 && \
	rm /tmp/nexus-latest-bundle.tar.gz

#create user nexus
RUN useradd --user-group --system --home-dir /opt/sonatype-nexus nexus
RUN chown -R nexus:nexus /opt/sonatype-work /opt/sonatype-nexus

ADD start_nexus.sh /opt/sonatype-nexus/bin/start_nexus.sh
RUN chmod 755 /opt/sonatype-nexus/bin/start_nexus.sh
#start nexus
CMD ["/opt/sonatype-nexus/bin/start_nexus.sh"]

VOLUME /opt/sonatype-work
VOLUME /opt/sonatype-nexus

EXPOSE 8081
