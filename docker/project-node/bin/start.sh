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
repo_url="git@github.com:bullteam/zeus-ui.git"
git_pull_or_clone ${repo_url} "/data/src/web/admin.bullteam.cn" master

cd /data/src/web/admin.bullteam.cn/
npm install && npm cache clean --force
npm run build:prod