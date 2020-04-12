#!/bin/bash
locust -f locustfile.py --master&
sleep 1
locust -f locustfile.py --slave &
sleep 1
locust -f locustfile.py --slave &
sleep 1
locust -f locustfile.py --slave &
