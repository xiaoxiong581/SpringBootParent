#!/bin/bash

cd `dirname $0`

echo "`date "+%Y-%m-%d %H:%M:%S"` start server..." >> /var/log/xiaoxiong581/SpringBoot/out.log 2>&1

JAVA_OPTS='-XX:+HeapDumpOnOutOfMemoryError -XX:HeapDumpPath=/opt/software/SpringBoot';
JAVA_OPTS="$JAVA_OPTS -Djava.ext.dirs=lib:$JRE_HOME/lib/ext";
JAVA_OPTS="$JAVA_OPTS -Xdebug -Xrunjdwp:transport=dt_socket,server=y,suspend=n,address=19081";
JAVA_OPTS="$JAVA_OPTS -Dspring.profiles.active=$envProfile";
#JAVA_OPTS="$JAVA_OPTS -javaagent:lib/aspectjweaver-1.8.13.jar";

java $JAVA_OPTS com.yzx.xiaoxiong581.springbootprovider.SpringBootProvierMain >> /var/log/xiaoxiong581/SpringBoot/out
.log 2>&1 &
