"cron_disk_use_check.sh" 29L, 641C                                                                                        2,1           Top
#!/bin/bash
# create : 2017/09/27

Your_email_address='nos@nssx.co.jp'
Limit=50

function func_send_alert()
{
  echo -e " \
Create by $0 at `date` \n \
hostname : `hostname` \n \
\n \
Disk usage alert: $i %\n \
---- detail ---- \n \
`/bin/df -h`" \
  | /bin/mail -s "[WARNING][`hostname`] disk space alert" "$Your_email_address"
}

## Main process ##
array=(`/bin/df | /bin/awk 'NR>1{gsub("%","",$5);print $5}'`)
for i in "${array[@]}"
do
  if [ $i -gt $Limit ]; then
"cron_disk_use_check.sh" 29L, 641C                                                                                        2,1           Top
#!/bin/bash
# create : 2017/09/27

Your_email_address='nos@nssx.co.jp'
Limit=80

function func_send_alert()
{
  echo -e " \
Create by $0 at `date` \n \
hostname : `hostname` \n \
\n \
Disk usage alert: $i %\n \
---- detail ---- \n \
`/bin/df -h`" \
  | /bin/mail -s "[WARNING][`hostname`] disk space alert" "$Your_email_address"
}

## Main process ##
array=(`/bin/df | /bin/awk 'NR>1{gsub("%","",$5);print $5}'`)
for i in "${array[@]}"
do
  if [ $i -gt $Limit ]; then
    func_send_alert
    #echo -e "Disk usage alert: $i %\n\n`/bin/df -h`" | /bin/mail -s "[WARNING][`hostname`] disk space alert" "$Your_email_address"
    break
  fi
done