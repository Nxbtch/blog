FROM ad2games/docker-rails:2.0.1

RUN bash -ec "chpst -u app bundle exec rake db:migrate"
