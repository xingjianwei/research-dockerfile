#  docker build -t beagle/caravel-python-npm-base:1.0 -f Dockerfile-all  .
FROM xjw263/superset-dev:latest
MAINTAINER xjw <xingjw@beagledata.com>
RUN cd /root/superset/superset/assets \
#&& npm install 
&& npm run prod \
&& cd /root/superset \
&& python setup.py install


