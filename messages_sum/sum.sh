#!/bin/bash
# funxtion: messagesファイルを時毎にカウントする
#
function usage(){
	echo "usage: sum.sh <filename>"
}
if [ -z $1 ] ; then
  usage
  exit 1
else
  fname=$1
fi

awk '{printf("%s/%02d-%02d時\n",$1,$2,substr($3,1,2))}' $fname | sort | uniq -c | awk '{printf("%s %12d\n",$2,$1)}'
