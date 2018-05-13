s = '''\
aaa
bbb
ccc
dddd
'''
with open('test.txt','w') as f:
    f.write(s)

with open('test.txt','r') as f:
    #
    while True:
        line = f.readline()
        #
        print(line, end='')
        if not line:
            break
