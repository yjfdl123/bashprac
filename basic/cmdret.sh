#!/bin/bash
PAHT=/bin:/usr/bin

cmd="ls -l"
$cmd
if [ $? -eq 0 ];
then
    echo "$cmd ok"
else
    echo "$cmd wrong"
fi
echo $?
ls +
echo $?
