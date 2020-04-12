#!/bin/bash
docker run \
-p 8089:8089 \
-p 5557:5557 \
--volume $PWD:/mnt/locust \
-e LOCUSTFILE_PATH=/mnt/locust/locustfile.py \
-e LOCUST_MODE=master \
-e TARGET_URL=http://aschool.lms.vnedu.vn \
biennt/locustdocker

