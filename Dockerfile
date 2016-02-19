FROM ad2games/docker-rails:2.0.1

RUN apt-get install redis-server
RUN service redis-server start
