#!/bin/bash

ps -ef | grep com.yzx.xiaoxiong581.springbootprovider.SpringBootProvierMain | grep -v grep | awk '{print $2}' | xargs kill -9