# Dockerfile - CentOS 7
FROM bullteam/openresty:centos7-1.13.6.2
COPY etc/nginx.conf /usr/local/openresty/nginx/conf/nginx.conf
COPY /bin/start.sh /start.sh

RUN cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
    && mkdir -p /etc/nginx/conf.d \
    && mkdir -p /tmp/nginx/cache \
    && chmod +x -R /bin

CMD ["/start.sh"]
