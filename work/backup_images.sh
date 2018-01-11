#/bin/bash
# function : style-arena
# create   : 2017/12/04

# 定数
Outpath="/home/stylearena/backups/images"
Today=`date '+%Y%m%d'`
File_ext="tar"

# バックアップを実行する
echo $(date +"%Y/%m/%d-%H:%M:%S") start

nice -n +10  \
    find /var/www/html/style-arena.jp/PROD/style-arena.jp/public/images/ \
    -type f -mtime -1 \
    -exec tar -rvf ${Outpath}/stylearena_images_${Today}.${File_ext} {} \;

ls -l ${Outpath}/stylearena_images_${Today}.${File_ext}

# 古いバックアップファイルは削除する
dlist=`find ${Outpath} -name "*.${File_ext}" -mtime +2`
for f in ${dlist[@]} ; do
  echo "purge ${f} "
  rm ${f}
done

echo "$(date +"%Y/%m/%d-%H:%M:%S") end"

