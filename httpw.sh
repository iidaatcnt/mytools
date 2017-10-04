#!/bin/bash
# Funtion : メモリ使用量と空き容量、起動しているhttpdの数、
            ポート別のセッションの数の変動を記録する

Date=`date '+%Y/%m/%d-%H:%M:%S'`  # EXECの読む時の形でない不融合起きる
Mem=,`free | grep -E '\-/\+ buffers/cache:' | awk '{print $3, $4}'`)
Httpd=`ps -ef | grep -E '^apache.*httpd$' | wc -l`

Post80=`netstat -ant | grep ":80 " | grep ESTA | wc -l`
Post80_all=`netstat -ant | grep ":80 " | wc -l`

PortSSL=`netstat -ant | grep ":10100 " | grep ESTA | wc -l`
PortSSL_all=`netstat -ant | grep ":10100 " | wc -l`

Connect_MySQL=`netstat -ant | grep ":3306 " | grep ESTA | wc -l`
Connect_MySQL_all=`netstat -ant | grep ":3306 "  | wc -l`

echo "datetime  used-mem free-mem   httpd    Port80      PortSLL         MySQL
echo "--------- --------- --------- -------- ---------   ------ ------   ----- -----"
echo "$Date, ${Mem[0]}, ${Mem[1]}, $Httpd, $Port,$Port,  $Port $PortSll, $Connect_MySQL,$Connect_MySQL_all"

