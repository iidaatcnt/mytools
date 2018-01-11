#/bin/bash
# function : backup_webapp

# 定数
Outpath="/home/backups/webapp"
Today=`date '+%Y%m%d'`
File_ext="tar.gz"

# バックアップを実行する
echo $(date +"%Y/%m/%d-%H:%M:%S") start

nice -n +10  \
  tar \
  czvf ${Outpath}/webapp_${Today}.${File_ext} \
  --exclude='/var/www/html/PROD/public/images' \
  --exclude='/var/www/html/PROD/logs' \
  --exclude='/var/www/html/PROD/public/tmp' \
  --exclude='/var/www/html/PROD/assets/sass/.sass-cache' \
  --exclude='/var/www/html/PROD/assets/sass-twitter-bootstrap/lib/.sass-cache' \
  /var/www/html/PROD

ls -l ${Outpath}/webapp_${Today}.${File_ext}

# 古いバックアップファイルは削除する
dlist=`find ${Outpath} -name "*.${File_ext}" -mtime +2`
for f in ${dlist[@]} ; do
  echo "purge ${f} "
  rm ${f}
done

echo "$(date +"%Y/%m/%d-%H:%M:%S") end"

