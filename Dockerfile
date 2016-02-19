FROM ad2games/docker-rails:2.0.1

RUN sudo apt-get install redis-server
RUN sudo service redis-server start
