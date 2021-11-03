#!/bin/bash
docker network create proget

docker run -d -e TZ=Asia/Shanghai -v postgre_volume:/var/lib/postgresql/data --net=proget --name=proget-postgres --restart=unless-stopped postgres:9.5

docker run -d -e TZ=Asia/Shanghai -v proget_packages:/var/proget/packages -v proget_extensions:/var/proget/extensions -p 80:80 --net=proget --name=proget --restart=unless-stopped inedo/proget:latest
  