s = '''\
aaa
bbb
ccc
dddd
'''
with open('test.txt','w') as f:
    f.write(s)

with open('test.txt','r') as f:
    # $B0l5$$KFI$_9~$`%1!<%9(B
    #print(f.read())
    # $B0l9T$E$DFI$_9~$`%1!<%9(B
    while True:
        line = f.readline()
        # $BKvHx$N2~9T$r<h$k(B
        print(line, end='')
        if not line:
            break
