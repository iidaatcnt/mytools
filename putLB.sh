#!/bin/bash
#
# fuction: file sync ( S3 -> web(LB) )
# create : 2017/09/11 miida
# update : 2017/09/12

SRC="s3://style-arena-data/html/style-arena.jp/PROD/style-arena.jp/public/images/ "
DST="/var/www/html/style-arena.jp/PROD/style-arena.jp/public/images/"
NICE=10
PROC="/usr/bin/s3cmd sync"

#STATUS=`ps -ef | grep "/usr/bin/s3cmd sync" | grep -v grep | wc -l`
STATUS=`ps -ef | grep "${PROC}" | grep -v grep | wc -l`

if [ ${STATUS} -gt 0 ]; then
  DATE=`date "+%Y/%m/%d-%H:%M:%S"`
  echo "$0 ${DATE} ${PROC} すでに起動中です。終了します。"
else
  DATE=`date "+%Y/%m/%d-%H:%M:%S"`
  echo "$0 ${DATE} ${PROC} 起動します"
  /bin/nice -n ${NICE} /usr/bin/s3cmd sync --delete-removed ${SRC} ${DST}
  DATE=`date "+%Y/%m/%d-%H:%M:%S"`
  echo "$0 ${DATE} ${PROC} 終了しました"
fi

