from datetime import datetime

from_dt = datetime(2018,4,1)
to_dt = datetime(2018,9,30)

ad = 30

str_day = '2018/10/15 09:15:31'
one_day = datetime.strptime(str_day, '%Y/%m/%d %H:%M:%S')

if from_dt <= one_day <= to_dt:
    print('In')
else:
    print('Out')