#!/bin/bash
#------
# 删除zeus服务
#
#------

docker ps -a|grep zeus|awk '{print $1}'|xargs docker stop|xargs docker rm
