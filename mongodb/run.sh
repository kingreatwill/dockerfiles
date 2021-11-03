#!/bin/bash
docker run --name mongo \
--restart unless-stopped \
-v mongo_volumn:/data/db \
-v mongo_cfg_volume:/data/configdb \
-p 27017:27017 \
--network my-net \
-d mongo
