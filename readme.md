# tips

wait until the container state will be healthy

Open a shell in the container

- docker exec -it [container-name] bash

Connect to mysql

- mysql -uroot -p
- mysql -u[user-name] -p

see logs

- docker logs [container-name]

find your generate password in logs

- docker logs [container-name] 2>&1 | grep GENERATED

change your password

- ALTER USER 'root'@'localhost' IDENTIFIED BY '[new-password]'

commands to create an user in mysql 

- mysql> CREATE USER 'usernameall'@'%' IDENTIFIED BY 'ThePassword';
- mysql> grant all on *.* to 'usernameall'@'%';


SELECT user,host FROM mysql.user;
mysqld --verbose --help | grep bind-address