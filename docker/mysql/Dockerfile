FROM mysql:5.7

#将所需文件放到容器中
COPY /bin/setup.sh /mysql/setup.sh
COPY /bin/privileges.sql /mysql/privileges.sql

RUN chmod a+x /mysql/setup.sh

RUN  cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
RUN usermod -u 1000 mysql && \
	chown mysql.mysql /var/run/mysqld/ && \
	chown mysql.mysql /var/lib/mysql/
EXPOSE 3308
VOLUME ["/opt"]
CMD ["sh", "/mysql/setup.sh"]