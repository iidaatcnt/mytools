from datetime import datetime

str_day = '2018/10/15 09:15:31'
one_day = datetime.strptime(str_day, '%Y/%m/%d %H:%M:%S')
print(one_day)  # -> 2018-10-15 09:15:31

str_date = '2018年10月16日'
one_day = datetime.strptime(str_date, '%Y年%m月%d日')
print(one_day)  # -> 22018-10-16 00:00:00