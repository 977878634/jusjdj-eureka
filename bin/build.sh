#!/bin/sh
#打包
echo "开始构建docker镜像"
mvn package docker:build -Dmaven.test.skip=true
#上传到docker服务器
sudo docker login --username=13588224627 registry.cn-qingdao.aliyuncs.com
sudo docker push registry.cn-qingdao.aliyuncs.com/justdj/eureka:latest