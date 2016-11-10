#!/bin/bash

echo "build python webapp image [beginman/python_webapp]...."
sysOS=`uname -s`
if [ $sysOS == 'Darwin' ];then
	docker build --rm -t beginman/python_webapp .
elif [ $sysOS == 'Linux' ];then
	sudo docker build --rm -t mrmrcoleman/python_webapp .
else
	echo "Other OS: $sysOS"
	sudo docker build --rm -t mrmrcoleman/python_webapp .
fi

