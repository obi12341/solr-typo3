FROM ubuntu:trusty
MAINTAINER Patrick Oberdorf <patrick@oberdorf.net>

RUN apt-get update && apt-get install -y tomcat6 \
		wget \
		unzip \
		&& apt-get clean

ADD install-solr.sh /install-solr.sh
RUN chmod +x /install-solr.sh
RUN /install-solr.sh ; exit 0
RUN mkdir /tmp/tomcat6-tomcat6-tmp && chmod 777 /tmp/tomcat6-tomcat6-tmp

RUN sed -i "s/\[localhost\]\.level = INFO/\[localhost\]\.level = WARNING/g" /var/lib/tomcat6/conf/logging.properties
RUN echo ".level = WARNING" >> /var/lib/tomcat6/conf/logging.properties

ADD solr.xml /opt/solr-tomcat/solr/solr-4.8.1/solr.xml
ADD run.sh /run.sh
RUN chmod +x /run.sh

EXPOSE 8080
CMD ["/run.sh"]
