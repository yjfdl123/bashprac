#!/bin/bash
# author: yjfdl123
# for prac awk
# 20160702
inputfile=dockerimage.txt
#tail -n 5 $inputfile 
awk 'BEGIN{i=0} {i++;print $3} END{print i}' $inputfile
