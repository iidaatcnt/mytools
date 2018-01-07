YOUR_EMAIL_ADDRESS='tsato@nssx.co.jp'
echo `ls -lth /backup/sql` | /bin/mail -s "[information][`hostname`] backup status information" "$YOUR_EMAIL_ADDRESS"

