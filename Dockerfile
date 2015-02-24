FROM centos:centos6
MAINTAINER Adrian Otto
RUN yum -y update
RUN yum -y install httpd
ADD start.sh /start.sh
EXPOSE 80
CMD /bin/sh /start.sh
