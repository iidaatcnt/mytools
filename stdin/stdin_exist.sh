#/bin/sh
# echo abc | ./script.sh
# /dev/stdinで標準入力をチェックしでcat -表示する

if [ -p /dev/stdin ]; then
  echo "existing stdin"
  cat -
else
  echo "nothing stdin"
fi
