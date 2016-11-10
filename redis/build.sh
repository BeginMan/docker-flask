#!/bin/bash

echo -e "build redis image [beginman/redis]...."
sysOS=`uname -s`
if [ $sysOS == 'Darwin' ];then
	docker build -t beginman/redis .
elif [ $sysOS == 'Linux' ];then
	sudo docker build -t beginman/redis .
else
	echo "Other OS: $sysOS"
	sudo docker build -t beginman/redis .
fi

