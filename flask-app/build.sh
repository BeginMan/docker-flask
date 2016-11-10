#!/bin/bash

echo -e "build flask app image [beginman/flask_app]...."
sysOS=`uname -s`
if [ $sysOS == 'Darwin' ];then
	docker build -t beginman/flask_app .
elif [ $sysOS == 'Linux' ];then
	sudo docker build -t beginman/flask_app .
else
	echo "Other OS: $sysOS"
	sudo docker build -t beginman/flask_app .
fi

