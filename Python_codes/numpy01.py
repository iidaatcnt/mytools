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

print(a.size)
print('')
# 6

print(np.arange(0, 30, 5))
print('')
# [ 0  5 10 15 20 25]

print(np.arange(0, 2, 0.3))
print('')
# [0.  0.3 0.6 0.9 1.2 1.5 1.8]

print(np.zeros((3, 4)))
print('')
# [[0. 0. 0. 0.]
#  [0. 0. 0. 0.]
#  [0. 0. 0. 0.]]

print(np.zeros((4, 4), dtype=np.int16))
print('')
# [[0 0 0 0]
#  [0 0 0 0]
#  [0 0 0 0]
#  [0 0 0 0]]

print(np.ones((3, 4), dtype=np.int16))
print('')
# [[1 1 1 1]
#  [1 1 1 1]
#  [1 1 1 1]]

print(np.nan)
print('')
# nan

# 03:28 14:14