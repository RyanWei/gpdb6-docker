#/bin/bash

docker build -f gpdb6_Dockerfile -t gpdb6:centos7 .
docker run -ti -d -v /sys/fs/cgroup:/sys/fs/cgroup:ro -h mdw gpdb6:centos7