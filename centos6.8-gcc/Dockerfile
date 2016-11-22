FROM centos:6.8
MAINTAINER xjw <xingjw@beagledata.com>
COPY Centos-6.repo  /etc/yum.repos.d/CentOS-Base.repo
RUN yum clean all \
&& yum makecache \
&& yum -y install gcc gcc-c++ cpp  make && yum clean all
