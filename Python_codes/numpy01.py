import numpy as np

a = np.array([[1,2,3],[4,5,6]])
print(a)
print('')
# [[1 2 3]
#  [4 5 6]]

print(a[0])
print('')
# [1 2 3]

print(a[1])
print('')
# [4 5 6]

print(a[0][0])
print('')
# 1

print(a.shape)
print('')
# (2, 3)

print(a.dtype.name)
print('')
# int32
