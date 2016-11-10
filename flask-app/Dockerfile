# 基于python_webapp基础镜像
FROM beginman/python_webapp
MAINTAINER beginman "beginman.cn"

ADD example_app.wsgi /var/www/flaskapp/flaskapp.wsgi
CMD service apache2 start && tail -F /var/log/apache2/error.log

