from datetime import datetime
now = datetime.now()

print(now.strftime('%Y/%m/%d'))  # -> 2018/10/21
print(now.strftime('%Y-%m-%d'))  # -> 2018-10-21
print(now.strftime('%H:%M:%S'))  # -> 18:39:03