FROM golang:latest

COPY /bin/start.sh /start.sh
RUN chmod a+x /start.sh
COPY ssh /root/.ssh
RUN yum install -y git\
    chmod +x /root/.ssh; \
    chmod 600 /root/.ssh/id_rsa;
ENV MYSQL_ETC1_PASSWORD="123456" \
    MYSQL_ETC1_MASTER_HOST="zeus_mysql" \
    MYSQL_ETC1_USERNAME='docker' \
    MYSQL_DB='auth' \
    MYSQL_CASBINDB='casbin' \
    REDIS_ETC1_HOST="zeus_redis" \
    REDIS_ETC1_PORT="6379" \
    REDIS_ETC1_PASSWORD=""

CMD ["/start.sh"]