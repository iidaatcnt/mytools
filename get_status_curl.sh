#!/bin/bash

URI=(
  http://www.cntsv.jp/
)

for item in ${URI[@]}; do
    Status=`curl -s $item -o /dev/null -w "%{http_code}\n"`
    echo $Status $item
done
