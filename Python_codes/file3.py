s = '''\
aaa
bbb
ccc
dddd
'''
with open('test.txt','w') as f:
    f.write(s)

with open('test.txt','r') as f:
    print(f.read())
