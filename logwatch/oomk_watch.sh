#!/bin/bash
#
# function : /var/log/messagesファイルにOut of memory
#            が出力されたらメールで通知する
# create :  2017/10/18
# usage  : (root user)# nohup sh oom_watch.sh &
#          停止するときはプロセスをkillしてください。

#Your_email_address='noc@nssx.co.jp'
Your_email_address="miida@nssx.co.jp,tsato@nssx.co.jp"
Log_name="/var/log/messages"
Searchword="Out of memory: Kill process"

alert_mail() {
  while read i
  do
    echo $i | grep -q "${Searchword}"
    if [ $? = "0" ];then
      echo -e $i | /bin/mail -s "[WARNING][`hostname`] Memory alert" "${Your_email_address}"
    fi
    done
}

tail -n 0 --follow=name --retry $Log_name | alert_mail
