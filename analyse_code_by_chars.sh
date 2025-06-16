#!/bin/sh
##分析编码，统计重码程度，评估离散表现。
head -8105 code.txt | awk '{print $2, $1}' | sort -d | awk '{print $1}' | uniq -c | sort -n | awk '{print $1}' | uniq -c

