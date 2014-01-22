FROM jottr/docker-base
MAINTAINER github.com/jottr 

## MYSQL
RUN apt-get install -y -q mysql-server mysql-client 
### Additions to MYSQL
RUN apt-get install -y -q php5-mysql

#RUN /bin/rm -rf /var/lib/mysql/*

ADD initialize_and_start_mysql /usr/sbin/initialize_and_start_mysql
ADD listen_on_all_addresses.cnf /etc/mysql/conf.d/listen_on_all_addresses.cnf

EXPOSE 3306
CMD [ "/usr/sbin/initialize_and_start_mysql" ]
