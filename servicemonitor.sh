#!/bin/bash
service="sshd jenking kubernetes java"
for i in $service
do
	ps -C $i
	if [ $? -ne 0 ]
	then
		echo "$i service is not running" | sendmail "service monitor" te97ja@gmail.com
	fi
done

