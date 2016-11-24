#  docker build -t beagle/caravel-python-npm-base:1.0 -f Dockerfile-all  .
FROM xjw263/superset-dev:latest
MAINTAINER xjw <xingjw@beagledata.com>
RUN cd /root/superset/superset/assets \
#&& npm install 
&& npm run prod 
RUN cd /root/superset \
&& mkdir /root/.pip/ \
&& echo "[global]" > /root/.pip/pip.conf \
&& echo "index-url = http://mirrors.aliyun.com/pypi/simple" >> /root/.pip/pip.conf \
&& echo "[install]" >> /root/.pip/pip.conf \
&& echo "trusted-host=mirrors.aliyun.com" >> /root/.pip/pip.conf \
&& pip  install  'werkzeug==0.11.10' \
&& pip  install   'celery==3.1.23'\
&& pip  install   'cryptography==1.5.3'\
&& pip  install   'flask-appbuilder==1.8.1'\
&& pip  install   'flask-cache==0.13.1'\
&& pip  install   'flask-migrate==1.5.1'\
&& pip  install   'flask-script==2.0.5'\
&& pip  install   'flask-testing==0.5.0'\
&& pip  install   'flask-sqlalchemy==2.0'\
&& pip  install   'humanize==0.5.1'\
&& pip  install   'gunicorn==19.6.0'\
&& pip  install   'markdown==2.6.6'\
&& pip  install   'pandas==0.18.1'\
&& pip  install   'parsedatetime==2.0.0'\
&& pip  install   'pydruid==0.3.0'\
&& pip  install   'PyHive>=0.2.1'\
&& pip  install   'python-dateutil==2.5.3'\
&& pip  install   'requests==2.10.0'\
&& pip  install   'simplejson==3.8.2'\
&& pip  install   'six==1.10.0'\
&& pip  install   'sqlalchemy==1.0.13'\
&& pip  install   'sqlalchemy-utils==0.32.7'\
&& pip  install   'sqlparse==0.1.19'\
&& pip  install   'thrift>=0.9.3'\
&& pip  install   'thrift-sasl>=0.2.1'\
&& python setup.py install



