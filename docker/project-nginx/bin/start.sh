#!/bin/bash
# array=$(ls /tmp/nginx_proxy/*.conf|xargs -I {} basename {} .conf)
# for domin in ${array[@]}
# do
#     ping -c 1 ${domin}
#     if [ $? == 0 ]; then
#         cp /tmp/nginx_proxy/${domin}.conf /etc/nginx/conf.d/${domin}.conf
#     else
#         rm -f /etc/nginx/conf.d/${domin}.conf
#     fi
# done

mkdir -p /data/log/nginx
/usr/local/openresty/nginx/sbin/nginx -g "daemon off;"