FROM solr:6.3.0-alpine

MAINTAINER Arne Schubert <atd.schubert@gmail.com>

RUN set -x \
  && wget -O /opt/solr/server/solr-webapp/webapp/WEB-INF/lib/jts-core-1.14.0.jar https://repo1.maven.org/maven2/com/vividsolutions/jts-core/1.14.0/jts-core-1.14.0.jar
