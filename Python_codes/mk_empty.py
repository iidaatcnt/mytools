import os

def mk_empty_file(fname):
    with open(fname,"w"):pass

if __name__ == '__main__':
    mk_empty_file("output/empty.txt")