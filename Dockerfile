FROM java:8-jre
MAINTAINER ambuds
ENV STORM_VERSION 0.10.1
RUN apt-get -y update
RUN apt-get -y install nano wget python gettext
RUN wget -q http://apache.cs.utah.edu/storm/apache-storm-${STORM_VERION}/apache-storm-${STORM_VERSION}.tar.gz -O /opt/apache-storm-${STORM_VERSION}.tar.gz
RUN cd /opt/;tar xf apache-storm-${STORM_VERSION}.tar.gz; mv apache-storm-${STORM_VERSION} storm; rm -rf *.gz
RUN mkdir /opt/storm-local
ADD storm.yaml.template /opt/storm/conf/
ADD storm_env.ini.template /opt/storm/conf/
ADD cluster.xml /opt/storm/log4j2/
ADD configure.sh /opt/
