#/bin/bash
# function : database buckup

# 定数
DBuser="hoge"
DBpasswd="piyo"
DBname="prod_db"
DBhost="hoge.rds.amazonaws.com"
Outpath="/home/backups/database"
Today=`date '+%Y%m%d'`
File_ext="sql"

# バックアップを実行する
echo $(date +"%Y/%m/%d-%H:%M:%S") start

nice -n +10  \
  mysqldump -u ${DBuser} \
  -p${DBpasswd} \
  ${DBname}  \
  -h ${DBhost} > ${Outpath}/stylearena_${Today}.${File_ext}

ls -l ${Outpath}/stylearena_${Today}.${File_ext}

# 古いバックアップファイルは削除する
dlist=`find ${Outpath} -name "*.${File_ext}" -mtime +2`
for f in ${dlist[@]} ; do
  echo "purge ${f} "
  rm ${f}
done

echo "$(date +"%Y/%m/%d-%H:%M:%S") end"

