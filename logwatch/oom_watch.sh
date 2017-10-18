#!/bin/bash

Email_address="xxxx@cntsv.jp"
Log_name="/var/log/messages"
Keyword='Out of memory: Kill process'

alert_mail() {
  while read i
  do
    echo $i | grep -q "${Keyword}"
    if [ $? = "0" ];then
      echo $i | mail -s ERROR "{$Email_address}"
    fi
  done
}

tail -n 0 --follow=name --retry $Log_name | alert_mail
