#!/bin/bash
# Funtion : メモリ使用量と空き容量、起動しているhttpdの数、
#            ポート別の接続状態のセッションの数の変動を記録する

Date=`date '+%Y/%m/%d-%H:%M:%S'`  # EXECの形
Mem=,`free | grep -E '\-/\+ buffers/cache:' | awk '{print $3, $4}'`)
Httpd=`ps -ef | grep -E '^apache.*httpd$' | wc -l`

#HTTP :: xxx.xxx.xxx.xxx:80 ESTABLISHED
Port80=`netstat -ant | grep ":80 " | grep ESTA | wc -l`

#SSL :: xxx.xxx.xxx.xxx:10100 ESTABLISHED
PortSSL=`netstat -ant | grep ":10100 " | grep ESTA | wc -l`

#MYSQL :: xxx.xxx.xxx.xxx:3306 ESTABLISHED
PortMySQL=`netstat -ant | grep ":3306 " | grep ESTA | wc -l`

echo "datetime  used-mem  free-mem  httpd    Port80    PortSLL    PortMySQL"
echo "--------- --------- --------- -------- --------- ---------- ---------"
echo "$Date, ${Mem[0]}, ${Mem[1]}, $Httpd,  $Port80,  $PortSSL,  $PortMySQL"

