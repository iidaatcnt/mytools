#!/bin/bash
# funxtion: messagesファイルの時間の範囲と行数を表示する
#
function usage(){
	echo "usage: about.sh <filename>"
}
if [ -z $1 ] ; then
  usage
  exit 0
fi
if [ -e $1 ]; then
  fname=$1
else
  echo "about.sh: no such file '$1'"
  exit 0
fi

first=`head -1 $1 | awk '{print $1, $2, $3}'`
last=`tail -1 $1  | awk '{print $1, $2, $3}'`
lines=`wc -l $1 | awk '{print $1}'`

echo $fname $first "->" $last "("  $lines "lines )"
