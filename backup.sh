#!/bin/bash

datadir=/home/yjfdl123/learn/pythonlearn
backdir=$HOME/bak
mkdir -p $backdir


PATH=/bin:/usr/bin:/sbin:/usr/sbin
export PATH

cd $backdir
tar -zcvf wekandb$(date +"%Y-%m-%d").tar.gz $datadir

