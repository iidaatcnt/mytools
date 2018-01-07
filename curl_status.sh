#!/bin/bash

URI=(
http://blaublitz.jp
http://blaublitz.jp/
http://blaublitz.jp/clubteam
http://blaublitz.jp/dreamschool
http://blaublitz.jp/dreamschool/akita
http://blaublitz.jp/dreamschool/daisen
http://blaublitz.jp/dreamschool/noshiro
http://blaublitz.jp/dreamschool/yurihonjo-nikaho
http://blaublitz.jp/eat
http://blaublitz.jp/event
http://blaublitz.jp/inquiry
http://blaublitz.jp/media
http://blaublitz.jp/members
http://blaublitz.jp/player
http://blaublitz.jp/property
http://blaublitz.jp/ranking
http://blaublitz.jp/schedule
http://blaublitz.jp/score
http://blaublitz.jp/sponsor
http://blaublitz.jp/sponsor/bluepartner
http://blaublitz.jp/sss
http://blaublitz.jp/stadium
http://blaublitz.jp/supporter
http://blaublitz.jp/ticket
http://blaublitz.jp/volunteer
http://blaublitz.jp/whatsnew
http://blaublitz.jp/youth
http://blaublitz.jp/youth/u-about
http://blaublitz.jp/youth/u-player
http://blaublitz.jp/youth/u-schedule
http://blaublitz.jp/youth/u-score
)

for item in ${URI[@]}; do
    echo $item
    curl -s $item -o /dev/null -w "%{http_code}\n"
    echo "---"
    sleep 10
done
