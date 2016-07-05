#!/bin/bash
# author: yjfn2141
# 作用： 对wekan数据库进行备份
# 流程： 需要先关闭wekan，拷贝数据库，再进行重启


wekandir=/home/qc/project/release/qkit-wekan 
datadir=$wekandir/.meteor/local/db
backdir=$HOME/bak
mkdir -p $backdir


PATH=/bin:/usr/bin:/sbin:/usr/sbin
export PATH

#先关掉wekan再操作
kill -s 9 $(ps -aux | grep meteor | awk '{print $2}')
sleep 2

#拷贝数据库
cd $backdir
tar -zcvf wekandb$(date +"%Y-%m-%d").tar.gz $datadir

#删除超过7天的数据库
sleep 1
find . -name wekan*.tar.gz -mtime +7 -delete

#最后重新开启wekan

sleep 1
cd $wekandir
sh start_wekan.sh
