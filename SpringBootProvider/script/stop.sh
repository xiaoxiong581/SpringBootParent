#!/bin/bash

logDir="/var/log/xiaoxiong581/SpringBoot"
if [ ! -d "$logDir" ];then
  mkdir -p $logDir
fi

echo "`date "+%Y-%m-%d %H:%M:%S"` stop server..." >> $logDir/out.log 2>&1

ps -ef | grep com.yzx.xiaoxiong581.springbootprovider.SpringBootProvierMain | grep -v grep | awk '{print $2}' | xargs kill -9