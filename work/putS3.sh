#!/bin/bash
#
# fuction: file sync (web -> S3)

SRC="/var/www/html/public/images/"
DST="s3://data/html/public/images/"
NICE=10
PROC="/usr/bin/aws s3 sync"

STATUS=`ps -ef | grep "${PROC}" | grep -v grep | wc -l`

if [ ${STATUS} -gt 0 ]; then
  echo "$0 $(date '+%Y/%m/%d-%H:%M:%S') ${PROC} すでに起動中です。終了します。"
else
  echo "$0 $(date '+%Y/%m/%d-%H:%M:%S') ${PROC} 起動します"
  /bin/nice -n ${NICE} ${PROC} --exact-timestamps --delete ${SRC} ${DST}
  echo "$0 $(date '+%Y/%m/%d-%H:%M:%S') ${PROC} 終了しました"
fi

