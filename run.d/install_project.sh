#!/bin/bash
##########
# 部署所有项目
#
##########

$(dirname $(dirname $0))/run.sh install service project $1
cd ${CURR_DIR}
