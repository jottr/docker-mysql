FROM ubuntu
MAINTAINER Jon Wood <jon@ninjagiraffes.co.uk>

RUN apt-get update
RUN apt-get install -y mysql-server
ADD initialize_and_start_mysql /usr/sbin/initialize_and_start_mysql

EXPOSE 3306
CMD [ "/usr/sbin/initialize_and_start_mysql" ]
