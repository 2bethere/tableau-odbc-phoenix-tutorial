#!/usr/bin/env bash
addpath() {
if [[ ! $(echo $PATH | grep $1) ]]
then
	echo "adding $1 (rc = $?)"
	echo export PATH="$1:$PATH"
	export PATH="$1:$PATH"
fi

}

export JAVA_HOME="/usr/jdk64/jdk1.8.0_112"
export YARN_CONF_DIR=/etc/hadoop/conf
export SPARK_HOME=/usr/hdp/current/spark2-client
export SPARK_MAJOR_VERSION=2
export PYSPARK_PYTHON=/usr/bin/python
addpath $JAVA_HOME/bin
#addpath /usr/hdp/current/phoenix-client/bin
#sudo -E -u hdfs spark-submit --jars /usr/hdp/current/phoenix-client/phoenix-client.jar pysparkPhoenixSave.py
