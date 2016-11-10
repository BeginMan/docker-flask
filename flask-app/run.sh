#########################################################################
# File Name: run.sh
# Author: beginman(fangpeng)
# mail: xinxinyu2011@163.com
# Created Time: 2016-11-10 15:08:27
#########################################################################
#!/bin/bash

docker run -p 5000:5000 \
	--link redis:db \
	-v $PWD/demo:/opt/demo \
	-i -t  --name my_flask_app beginman/flask_app \
	python /opt/demo/run.py

sysOS=`uname -s`
if [ $sysOS == 'Darwin' ];then
	IP=`docker-machine ip default`
	echo "\033[32m curl "${IP}":5000"
elif [ $sysOS == 'Linux' ];then
	echo "\033[32m curl localhost:5000"
else
	echo "\033[31m Other OS: $sysOS"
	echo "\033[32m curl localhost:5000"
fi
