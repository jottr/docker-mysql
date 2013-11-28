FROM ubuntu
MAINTAINER Jon Wood <jon@ninjagiraffes.co.uk>

RUN apt-get update
RUN apt-get install -y mysql-server

ADD initialize_and_start_mysql /usr/sbin/initialize_and_start_mysql
ADD listen_on_all_addresses.cnf /etc/mysql/conf.d/listen_on_all_addresses.cnf

EXPOSE 3306
CMD [ "/usr/sbin/initialize_and_start_mysql" ]
