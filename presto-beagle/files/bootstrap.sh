#!/bin/bash

# Script executed by supervisord as bootstrap
####

# It manager the hadoop processes startup sequence via
# the systemctl command. This is the only script launched
# at startup by supervisord.

# 1 Zookeeper
supervisorctl start zookeeper

# 2 HDFS
supervisorctl start hdfs-namenode

# 3 YARN
supervisorctl start yarn-resourcemanager mapreduce-historyserver

# 4 Hive
supervisorctl start hive-metastore hive-server2

# 5 Presto
/opt/presto-server/bin/launcher start

# 6 Airpal
java -server \
     -Duser.timezone=UTC \
     -cp /opt/airepal/airpal-*-all.jar com.airbnb.airpal.AirpalApplication server /opt/airepal/reference.yml