FROM mysql/mysql-server:5.7.9

USER root

RUN chown -R 1000:1000 /var/lib/mysql


