#!/bin/bash
#
# fuction: file sync (web(admin) -> S3)
# create : 2017/09/11 miida
# update : 2017/09/12 
# update : 2017/12/08 

SRC="/var/www/html/style-arena.jp/PROD/style-arena.jp/public/images/"
DST="s3://style-arena-data/html/style-arena.jp/PROD/style-arena.jp/public/images/"
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

