#!/bin/bash

DATE=`date '+%Y-%m-%d'`
MEM=(`free | grep -E '\-/\+ buffers/cache:' | awk '{print $3, $4}'`)
PROC_CNT=`ps -ef | grep -E '^apache.*httpd$' | wc -l`
CONNECT_CNT=`netstat -ant | grep ':80' | grep ESTA | wc -l`
SUM=`ps -ylC httpd --sort:rss | awk '{s=s+$8}END{print s}'`

echo "$DATE, ${MEM[0]}, ${MEM[1]}, $PROC_CNT, $CONNECT_CNT, $SUM"

if [ -lt 1024 * 5 ] ; then
  RET=99
else
  RET=0
fi

exit $RET
