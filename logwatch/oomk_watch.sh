#!/bin/bash

Your_email_address="iida.m@cntsv.jp"
#Log_name="/var/log/messages"
Log_name="logfile"
Searchword="Out of memory: Kill process"

alert_mail() {
  while read i
  do
    echo $i | grep -q "${Keyword}"
    if [ $? = "0" ];then
      echo $i | mail -s ERROR "{$Email_address}"
      #echo $i 
    fi
  done
}

tail -n 0 --follow=name --retry $Log_name | alert_mail
