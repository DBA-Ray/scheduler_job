#!/bin/sh
#Author DBA R

monitordir=/data/monitor

logdir=/data/proxysql

dailyfile=proxysql1_pro1_`date +%Y%m%d%H%M%S`.txt

grep -i error ${logdir}/proxysql.log > /tmp/${dailyfile}

scp_port=22

scp -P 22 /tmp/${dailyfile} root@10.56.8.232:${monitordir}/proxysql1_pro1.txt

