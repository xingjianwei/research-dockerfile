#  docker build -t beagle/centos-aliyun:7.2.1511 -f Dockerfile  .
FROM centos:7.2.1511
MAINTAINER xjw <xingjw@beagledata.com>
COPY Centos-7.repo  /etc/yum.repos.d/CentOS-Base.repo
RUN yum clean all \
&& yum makecache

