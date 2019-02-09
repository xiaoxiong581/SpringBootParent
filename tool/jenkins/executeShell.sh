#!/bin/bash

set +x

echo "cp file start"
scp $WORKSPACE/SpringBootProvider/target/*.tar.gz $WORKSPACE/SpringBootProvider/docker/Dockerfile $WORKSPACE/SpringBootProvider/script/entrypoint.sh root@10.0.2.15:/opt/software/docker/dockerfile/springBoot
echo "cp file end"

ssh root@10.0.2.15 << EOF
 echo "start build docker"
 cd /opt/software/docker/dockerfile/springBoot
 docker tag 10.0.2.15:5000/xiaoxiong581/springboot:0.0.1-snapshot 10.0.2.15:5000/xiaoxiong581/springboot:`date "+%Y%m%d%H%M%S"`
 docker build -t 10.0.2.15:5000/xiaoxiong581/springboot:0.0.1-snapshot .
 exit
EOF