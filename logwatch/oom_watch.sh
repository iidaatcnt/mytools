#!/bin/bash

Your_email_address='xxxx@cntsv.jp'
Keyword='Out of memory: Kill process'

function func_send_alert()
{
}

## Main process ##
grep $keyword 


#array=(`/bin/df | /bin/awk 'NR>1{gsub("%","",$5);print $5}'`)
#for i in "${array[@]}"
#do
#  if [ $i -gt $Limit ]; then
#    func_send_alert
#    #echo -e "Disk usage alert: $i %\n\n`/bin/df -h`" | /bin/mail -s "[WARNING][`hostname`] disk space alert" "$Your_email_address"
#    break
#  fi
#done
