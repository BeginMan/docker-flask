# static web for docker
FROM ubuntu:latest
MAINTAINER Beginman "xinxinyu2011@163.com"
ENV REFRESHED_AT 2016-11-10
RUN apt-get update
RUN apt-get -y -q install nginx
RUN mkdir -p /var/www/html
ADD nginx/global.conf /etc/nginx/conf.d/
ADD nginx/nginx.conf /etc/nginx/nginx.conf
EXPOSE 80


