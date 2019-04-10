FROM mysql:5.7

RUN  cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
RUN usermod -u 1000 mysql && \
	chown mysql.mysql /var/run/mysqld/ && \
	chown mysql.mysql /var/lib/mysql/
EXPOSE 3308
VOLUME ["/opt"]
