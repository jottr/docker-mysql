FROM ubuntu
MAINTAINER Jon Wood <jon@ninjagiraffes.co.uk>

RUN apt-get update
RUN apt-get install -y mysql-server

EXPOSE 3306
CMD [ "/usr/sbin/mysqld" ]
