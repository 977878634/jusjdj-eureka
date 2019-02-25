#!/bin/sh
#打包
echo "关闭旧容器"
docker stop justdj-eureka
docker rm justdj-eureka
echo "开始构建docker镜像"
mvn package docker:build -Dmaven.test.skip=true
echo "运行"
docker run -d -p 8761:8761  --name justdj-eureka justdj/eureka:latest