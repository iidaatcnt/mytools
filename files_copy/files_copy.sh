#/usr/bin/bash

lb=(
/var/www/html/STG/images/master/page.php
/var/www/html/STG/images/event/wp-booter.php
/var/www/html/STG/images/snaps/yymmdd/include.php
/var/www/html/STG/images/snaps/yymmdd/admin.php
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
