[ec2-user@blaublitz nssx]$ more httpw.sh
#!/bin/bash
# create : 2017/09/14 m.iida
# update : 2017/09/15
# update : 2017/09/20

DATE=`date '+%Y/%m/%d-%H:%M:%S'`
MEM=(`free | grep -E '\-/\+ buffers/cache:' | awk '{print $3, $4}'`)
PROC_CNT=`ps -ef | grep -E '^apache.*httpd$' | wc -l`
CONNECT_80=`netstat -ant | grep ":80 " | grep ESTA | wc -l`
CONNECT_80_ALL=`netstat -ant | grep ":80 " | wc -l`
CONNECT_SSL=`netstat -ant | grep ":10100 " | grep ESTA | wc -l`
CONNECT_SSL_ALL=`netstat -ant | grep ":10100 " | wc -l`
CONNECT_MySQL=`netstat -ant | grep ":3306 " | grep ESTA | wc -l`
CONNECT_MySQL_ALL=`netstat -ant | grep ":3306 "  | wc -l`

echo "DATE      TIME      TOTAL-MEM FREE-MEM HTTPDs P80    SSL  MySQL"
echo "--------- --------- --------- -------- ------ ------ ---- -----"
echo "$DATE, ${MEM[0]}, ${MEM[1]}, $PROC_CNT, $CONNECT_80($CONNECT_80_ALL), $CON
NECT_SSL($CONNECT_SSL_ALL), $CONNECT_MySQL($CONNECT_MySQL_ALL)"

[ec2-user@blaublitz nssx]$ 