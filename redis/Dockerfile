FROM		ubuntu:latest
ENV REFRESHED_AT 2016-11-10

RUN         apt-get update
RUN         apt-get -y install redis-server redis-tools
EXPOSE      6379
ENTRYPOINT  ["/usr/bin/redis-server"]
