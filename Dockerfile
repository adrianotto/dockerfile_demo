FROM centos:centos6
MAINTAINER Adrian Otto
RUN yum -y install httpd
ADD start.sh /start.sh
RUN yum -y update
EXPOSE 80
CMD /bin/sh /start.sh
