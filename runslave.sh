#!/bin/bash
docker run \
--volume $PWD:/mnt/locust \
-e LOCUSTFILE_PATH=/mnt/locust/locustfile.py \
-e LOCUST_MODE=slave \
-e LOCUST_MASTER_HOST=172.17.0.2 \
-e TARGET_URL=http://aschool.lms.vnedu.vn \
biennt/locustdocker

