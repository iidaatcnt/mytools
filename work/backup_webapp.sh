#/bin/bash
# function : style-arena
# create   : 2017/12/04

# 定数
Outpath="/home/stylearena/backups/webapp"
Today=`date '+%Y%m%d'`
File_ext="tar.gz"

# バックアップを実行する
echo $(date +"%Y/%m/%d-%H:%M:%S") start

nice -n +10  \
  tar \
  czvf ${Outpath}/stylearena_webapp_${Today}.${File_ext} \
  --exclude='/var/www/html/style-arena.jp/PROD/style-arena.jp/public/images' \
  --exclude='/var/www/html/style-arena.jp/PROD/style-arena.jp/logs' \
  --exclude='/var/www/html/style-arena.jp/PROD/style-arena.jp/public/tmp' \
  --exclude='/var/www/html/style-arena.jp/PROD/assets/sass/.sass-cache' \
  --exclude='/var/www/html/style-arena.jp/PROD/assets/sass-twitter-bootstrap/lib/.sass-cache' \
  /var/www/html/style-arena.jp/PROD

ls -l ${Outpath}/stylearena_webapp_${Today}.${File_ext}

# 古いバックアップファイルは削除する
dlist=`find ${Outpath} -name "*.${File_ext}" -mtime +2`
for f in ${dlist[@]} ; do
  echo "purge ${f} "
  rm ${f}
done

echo "$(date +"%Y/%m/%d-%H:%M:%S") end"

