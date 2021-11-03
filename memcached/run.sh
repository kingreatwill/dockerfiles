#!/bin/bash
docker run --name memcached \
--restart unless-stopped \
-p 11211:11211 \
--network my-net \
-d memcached memcached -m 64
