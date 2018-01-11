#/usr/bin/bash
# create : 2017/11/21 m.iida

lb=(
/var/www/html/style-arena.jp/STG/style-arena.jp/public/images.2015-01-21.bak/areacontents/20131202/footer.php
/var/www/html/style-arena.jp/STG/style-arena.jp/public/images.2015-01-21.bak/streetstyle/2009/8/4/javascript.php
/var/www/html/style-arena.jp/STG/style-arena.jp/public/images.2015-01-21.bak/streetstyle/2013/5/4/.system60.php
/var/www/html/style-arena.jp/STG/style-arena.jp/public/images.2015-01-21.bak/streetstyle/2014/10/3/.defines37.php
/var/www/html/style-arena.jp/STG/style-arena.jp/public/images.2015-01-21.bak/master/page.php
/var/www/html/style-arena.jp/STG/style-arena.jp/public/images.2015-01-21.bak/master/icon/shops.category/utf.php
/var/www/html/style-arena.jp/STG/style-arena.jp/public/images.2015-01-21.bak/snaps/201407/include.php
/var/www/html/style-arena.jp/STG/style-arena.jp/public/images.2015-01-21.bak/snaps/201403/admin.php
/var/www/html/style-arena.jp/STG/style-arena.jp/public/images/areacontents/20131202/footer.php
/var/www/html/style-arena.jp/STG/style-arena.jp/public/images/streetstyle/2009/8/4/javascript.php
/var/www/html/style-arena.jp/STG/style-arena.jp/public/images/streetstyle/2013/5/4/.system60.php
/var/www/html/style-arena.jp/STG/style-arena.jp/public/images/streetstyle/2014/10/3/.defines37.php
/var/www/html/style-arena.jp/STG/style-arena.jp/public/images/master/page.php
/var/www/html/style-arena.jp/STG/style-arena.jp/public/images/master/icon/shops.category/utf.php
/var/www/html/style-arena.jp/STG/style-arena.jp/public/images/event/wp-booter.php
/var/www/html/style-arena.jp/STG/style-arena.jp/public/images/snaps/201407/include.php
/var/www/html/style-arena.jp/STG/style-arena.jp/public/images/snaps/201403/admin.php
)

for i in ${lb[@]}; do

  # rename xxx.php to xxx.php.suspected
  #echo "mv -n ${i} ${i}.nssx_sespected"
  #sudo  mv -n ${i} ${i}.nssx_sespected

  # display status
  ls -l         ${i}*

  # recue more
  #echo "mv ${i}.nssx_sespected ${i} "
  #sudo  mv ${i}.nssx_sespected ${i} 

done
