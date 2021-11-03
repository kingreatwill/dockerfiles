#!/bin/bash
docker run --name redis \
--restart unless-stopped \
-p 6379:6379 \
--network my-net \
-v redis_volume:/data \
-d redis