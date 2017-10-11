#!/bin/bash
# usage : ./remote_df.sh ~/.ssh/id_rsa hoge@111.111.111.111

Limit=10
Command="df -h"

if [ $# -gt 2 ]; then
  Key=$1
  Host=$2
fi

dfout=`ssh -i $Key $Host $Command`
array=(`echo "$dfout" | awk 'NR>1{gsub("%","",$5);if($5 ~/^[0-9]+$/)print $5}'`)

for i in "${array[@]}"
do
  if [ $i -gt $Limit ]; then
    echo $Host `date '+%Y/%m/%d-%H:%M'`
    echo "$dfout"
    break
  fi
done

exit 0
