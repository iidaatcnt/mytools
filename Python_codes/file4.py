s = '''\
aaa
bbb
ccc
dddd
'''
with open('test.txt','w') as f:
    f.write(s)

with open('test.txt','r') as f:
    # 一気に読み込むケース
    #print(f.read())
    # 一行づつ読み込むケース
    while True:
        line = f.readline()
        # 末尾の改行を取る
        print(line, end='')
        if not line:
            break
