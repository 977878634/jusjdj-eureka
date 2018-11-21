#!/bin/sh
#打包
echo "开始构建docker镜像"
mvn package docker:build -Dmaven.test.skip=true
#上传到docker服务器
docker login --username=13588224627 registry-internal.cn-qingdao.aliyuncs.com
docker tag test registry-internal.cn-qingdao.aliyuncs.com/justdj/shan:latest
docker push registry-internal.cn-qingdao.aliyuncs.com/justdj/shan:latest;;