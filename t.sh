#!/bin/bash

URI=(
http://blaublitz.jp
http://blaublitz.jp/
)

for item in ${URI[@]}; do
    echo $item
    curl -s $item -o /dev/null -w "%{http_code}\n"
    echo "---"
done
