FROM duffqiu/storm:latest
MAINTAINER duffqiu@gmail.com

RUN rpm --import http://mirror.centos.org/centos/RPM-GPG-KEY-CentOS-7
RUN yum -y  update

ADD ui/storm.yaml /storm/conf/storm.yaml
ADD start-ui /storm/start-ui

ENTRYPOINT [ "/storm/start-ui" ]

