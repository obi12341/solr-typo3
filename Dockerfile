FROM ubuntu:trusty
MAINTAINER Patrick Oberdorf <p.oberdorf@raphael-gmbh.de>

RUN apt-get update && apt-get install -y tomcat6 \
		wget \
		unzip

ADD install-solr.sh /install-solr.sh
RUN chmod +x /install-solr.sh
RUN /install-solr.sh ; exit 0

ADD solr.xml /opt/solr-tomcat/solr/solr-4.8.1/solr.xml
ADD run.sh /run.sh
RUN chmod +x /run.sh

EXPOSE 8080
CMD ["/run.sh"]
