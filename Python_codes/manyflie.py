import os

src = "sample.csv"
if os.path.isfile(src):
    with open(src, 'w', opener=opener) as f:
        print('This will be written to somedir/spamspam.txt', file=f)