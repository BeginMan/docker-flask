#########################################################################
# File Name: run.sh
# Author: beginman(fangpeng)
# mail: xinxinyu2011@163.com
# Created Time: 2016-11-10 15:08:27
#########################################################################
#!/bin/bash

docker run -d -p 6379 --name redis beginman/redis
