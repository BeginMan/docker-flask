flask_webapp
=============

基于beginman/python_webapp 镜像构建的flask_webapp镜像，进行flask docker化，使用一个简单的小demo 连接redis数据库做示例。

# 使用说明：

```bash
	git clone https://github.com/BeginMan/docker-sample-demos.git
	cd python_webapp
	./build.sh
	
	cd redis
	./build.sh
	./run.sh

	cd flask_webapp
	./build.sh
	./run.sh
```

如果宿主环境是Max OS X 则，`docker-machine ip default` 获取IP， 然后访问，如果是Linux则直接以本地IP进行访问。


