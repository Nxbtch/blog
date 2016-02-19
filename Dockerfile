FROM ad2games/docker-rails:2.0.1

WORKDIR /home/app/webapp
RUN bash -ec "bundle exec rake db:setup"
