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
addpath $JAVA_HOME/bin
addpath /usr/hdp/current/phoenix-client/bin
time for i in $(ls data) ; do tn=${i%%.csv}; tn=${tn##*_};tn=CORP.${tn^^};  psql.py -t $tn sql/${i/.csv/.sql} data/$i ; done
