#########################################################################
# File Name: run.sh
# Author: beginman(fangpeng)
# mail: xinxinyu2011@163.com
# Created Time: 2016-11-10 11:36:24
#########################################################################
#!/bin/bash

# docker run 创建一个容器,传入nginx作为容器启动命令
# 一般情况下这个命令无法让Nginx以交互的方式运行，但我们已经
# nginx配置文件加入了 daemon off, 这个指令让Nginx启动后以交互的方式在前台运行

docker run -d -p 8090:80 --name website \
	-v $PWD/website:/var/www/html/website \
	beginman/nginx nginx

sysOS=`uname -s`
if [ $sysOS == 'Darwin' ];then
	IP=`docker-machine ip default`
	echo "curl "${IP}":8090"
elif [ $sysOS == 'Linux' ];then
	echo "curl localhost:8090"
else
	echo "Other OS: $sysOS"
	echo "curl localhost:8090"
fi
