FROM ubuntu:14.04

RUN dpkg-divert --local --rename --add /sbin/initctl
RUN ln -nfs /bin/true /sbin/initctl

RUN echo "deb http://archive.ubuntu.com/ubuntu trusty main universe" > /etc/apt/sources.list
RUN apt-get update && apt-get upgrade -y

RUN apt-get install -yqq inetutils-ping

RUN apt-get install -y mysql-server
RUN apt-get install -y mysql-client

RUN sed -i -e"s/^bind-address\s*=\s*127.0.0.1/bind-address = 0.0.0.0/" /etc/mysql/my.cnf


ADD ./startup.sh /opt/startup.sh
#ADD /home/umut/test/toy_app/shared/mysql-backup /backup

EXPOSE 3306

CMD ["/bin/bash", "/opt/startup.sh"]
