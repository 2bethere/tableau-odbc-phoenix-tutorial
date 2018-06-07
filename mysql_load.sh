#!/usr/bin/env bash
export host=pathdpm
export user=root
export pass=admin
export db=corp
my() {
	mysql -h ${host} -u ${user} -p${pass} "$@"
}

my -e "drop database if exists $db;"
my -e "create database $db;"
for i in `ls sql/*.sql`; do cat $i | sed 's/VARCHAR/VARCHAR(255)/' > tmp/ct.sql ; my -D $db < tmp/ct.sql; done
for i in `ls data/*.csv` 
do 
	tn=${i##*_};tn=${tn%%.csv}
	sed -e "s#file#$i#" -e "s#tablename#${tn}#" data/loaddata.tmpl >tmp/import
	my -D $db  < tmp/import
done
