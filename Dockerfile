FROM ad2games/docker-rails:2.0.1

COPY db_migrate.sh /etc/my_init.d/90_db_migrate.sh
