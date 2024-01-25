#/bin/bash
# Author: Ragupathy
# Date: 25/01/2024
# Desc: This script will ping a remote host and notify

hosts="172.31.81.235"

ping  -c1 172.31.81.235
         if [ $? -eq  0 ]
         then
		echo OK
	 else 
	        echo NOT OK
         fi		

ping -c1 172.31.81.54 &> /dev/null
         if [ $? -eq 0 ]
         then
		 echo OK 
         else
		 echo NOT OK 
         fi

ping -c1 $hosts &> /dev/null
         if [ $? -eq 0 ]
         then 
		 echo $hosts is OK
         else 
		 echo $hosts is NOK
         fi

file="/home/ubuntu/shell-scripting/udemylearning/myhosts"

for ip in $(cat $file) 
do
	ping -c1 $ip &> /dev/null
	if [ $? -eq 0 ]
        then
		echo $ip is OK
	else 
		echo $ip is NOK
	fi
done
