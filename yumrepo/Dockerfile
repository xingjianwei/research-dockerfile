FROM centos:7.2.1511
MAINTAINER xjw <xingjianwei@gmail.com>
#docker build -t beagle/yumrepo:1.0 -f Dockerfile  .
#docker run -d -p 8080:80 -v $PWD/repo:/repo -v $PWD/logs:/logs beagle/yumrepo
#https://github.com/dgutierrez1287/docker-yum-repo

ADD scan_repo.rb / 
ADD startup.sh /
RUN yum -y install epel-release \
&& yum -y update \
&& yum -y install gcc ruby ruby-devel supervisor createrepo yum-utils nginx \
&& yum clean all \
&& gem install rb-inotify \
&& mkdir /repo \
&& mkdir /logs \
&& chmod 755 /scan_repo.rb \
&& chmod 755 /startup.sh 

ADD nginx.conf /etc/nginx/nginx.conf 
ADD supervisord.conf /etc/supervisord.conf 
 
EXPOSE 80
VOLUME /repo /logs

ENTRYPOINT ["/startup.sh"]
