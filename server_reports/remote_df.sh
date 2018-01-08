#!/bin/bash

Usage="usage : ./remote_df.sh ~/.ssh/id_rsa hoge@111.111.111.111"
Limit=10
Command="df -h"

if [ $# -ge 2 ]; then
  Key=$1
  Host=$2
else
  echo $Usage
  exit 1
fi

dfout=`ssh -i $Key $Host $Command`
array=(`echo "$dfout" | awk 'NR>1{gsub("%","",$5);if($5 ~/^[0-9]+$/)print $5}'`)

for i in "${array[@]}"
do
  if [ $i -gt $Limit ]; then
    echo "Alert:" $Host `date '+%Y/%m/%d-%H:%M'`
    echo "$dfout"
    break
  fi
done

exit 0
