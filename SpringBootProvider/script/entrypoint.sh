#!/bin/bash

mkdir -p /var/log/xiaoxiong581/SpringBoot

sh /opt/SpringBoot/start.sh > /var/log/xiaoxiong581/SpringBoot/init.log && tail -F /var/log/xiaoxiong581/SpringBoot/init.log