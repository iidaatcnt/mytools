#!/bin/bash
#
# fuction: file sync ( S3 -> web(PROD) )

SRC="s3://servername/html_backup/ "
DST="/var/www/html/"
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

