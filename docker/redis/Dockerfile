FROM redis:4

COPY etc/redis.conf /usr/local/etc/redis/redis.conf
RUN  cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
RUN  chown -R redis:redis /data
CMD [ "redis-server", "/usr/local/etc/redis/redis.conf" ]

VOLUME ["/data"]
EXPOSE 6379