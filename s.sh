#/bin/bash

_sum() {
  local sum=0
  for i in $(cat -)
  do
    sum=$((sum + i))
  done
  echo $sum
}

if [ -p /dev/stdin ]; then
  cat -
else
  echo $@
fi | _sum

