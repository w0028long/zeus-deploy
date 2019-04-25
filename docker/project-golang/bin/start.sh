#!/bin/bash
function git_pull_or_clone()
{
    branch=$3
    repo=$1
    dir=$2
    
    mkdir -p $dir
    cd $dir
    if [ -d '.git' ]; then
        git pull
    else
        git clone $repo $dir -b $branch
    fi
    cd $CURR_DIR
}

mkdir -p /data/src/web
repo_url="git@github.com:bullteam/zeus.git"
git_pull_or_clone ${repo_url} "/data/src/web/api.admin.bullteam.cn" master

cd /data/src/web/api.admin.bullteam.cn/
cd cmd/api-server

export GOPROXY=https://goproxy.io
export GO111MODULE=on
go build -o zeus
chmod a+x ./zeus
./zeus start -c ../../conf