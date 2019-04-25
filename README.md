# zeus 部署工具

Linux 下部署
先 [安装docker 环境](http://www.runoob.com/docker/centos-docker-install.html) 
再 [安装docker composer](https://docs.docker.com/compose/install/)


## 生成目录
```
mkdir -p ~/Work;
cd ~/Work;
mkdir -p data project log runtime src/{app,script,web};

```

## 下载程序

```
cd ~/Work/src/web/

git clone git@github.com:bullteam/zeus-ui.git admin.bullteam.cn;
git clone git@github.com:bullteam/zeus.git api.admin.bullteam.cn;

```


## 部署

```
cd ~/Work/project/
git clone git@github.com:bullteam/zeus-deploy.git zeus;
cd ./zeus;

./run.sh uninstall all;
./run.sh install all;

```



## 修改 hosts

```
127.0.0.1 admin.bullteam.cn;
127.0.0.1 api-admin.bullteam.cn;

```