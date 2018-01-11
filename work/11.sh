set +x
#!/bin/bash
Logname="access_log.20171011"

grep -e "GET /health.html" $Logname | wc -l
grep -e " 404 " $Logname | wc -l
grep -e "pma_username" $Logname | wc -l
grep -e "GET /whatsnew/[0-9]*.html" $Logname | wc -l
grep -e "GET /phpMyAdmin/index.php?lang=en-utf-8&token=" $Logname | wc -l
grep -e "GET /phpMyAdmin/index.php?lang=en-utf-8& " $Logname | wc -l
grep -e "Googlebot-Image/1.0" $Logname | wc -l
grep -e "GET / " $Logname | wc -l
grep -e "GET /%E6%9C%AA%E5%88%86%E9%A1%9E/15407.html HTTP/1.1" $Logname | wc -l
grep -e "GET /admin/ HTTP/1.1" $Logname | wc -l
grep -e "GET /event HTTP/1.1" $Logname | wc -l
grep -e "GET /index.php?m=Home&c=Index&a=login&language=zh-cn HTTP/1.1" $Logname | wc -l
grep -e "GET /phpMyAdmin/ HTTP/1.1" $Logname | wc -l
grep -e "GET /ranking HTTP/1.1" $Logname | wc -l
grep -e "GET /robots.txt HTTP/1.1" $Logname | wc -l
grep -e "GET /stssys.htm HTTP/1.1" $Logname | wc -l
grep -e "HEAD " $Logname | wc -l

exit
