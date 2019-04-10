#!/bin/bash
#-------
# 重新构建并启动容器
#
#-------

PARENT_DIR=`dirname $0`
. ${PARENT_DIR}/inc.sh

service=$1
env=$2

cd ${DOCKER_FILE_DIR}

replace_compose_yml ${service} ${env}

path=${service}.yml
if [[ ! -z ${env} ]]; then
    path=${service}.${env}.yml
fi

# -d 在后台运行容器
# --build 在启动容器前构建镜像
# --force-recreate 强制重新创建容器(重启)
# --remove-orphans 删除没用的容器
docker-compose -f ${path} up -d --build --force-recreate
