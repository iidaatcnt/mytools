import numpy as np
import pandas as pd
s = pd.Series([1,2,3])

print(s)
# 0    1
# 1    2
# 2    3

print('s[0] = ',s[0])
# s[0] =  1

print('s.sum() = ', s.sum())
# s.sum() =  6

df = pd.DataFrame({'A':[1,2], 'B':[3,4]})
print(df)
#    A  B
# 0  1  3
# 1  2  4
print('')

print(df.dtypes)
print('')

df = pd.DataFrame(np.random.rand(6,4))
print(df)
print('')
#           0         1         2         3
# 0  0.179869  0.972050  0.356034  0.452990
# 1  0.979403  0.874745  0.110557  0.054391
# 2  0.475034  0.029103  0.913563  0.679111
# 3  0.595140  0.007973  0.625976  0.511182
# 4  0.123919  0.136139  0.377868  0.859934
# 5  0.845550  0.706494  0.632905  0.031558

df = pd.DataFrame(np.random.rand(6,4), index=pd.date_range('20180101',periods=6))
print(df)
print('')
#                    0         1         2         3
# 2018-01-01  0.954040  0.896953  0.659154  0.855570
# 2018-01-02  0.817651  0.131868  0.542876  0.940681
# 2018-01-03  0.702394  0.399594  0.715121  0.239511
# 2018-01-04  0.370859  0.813085  0.102488  0.949969
# 2018-01-05  0.426554  0.778701  0.484450  0.267715
# 2018-01-06  0.261676  0.128110  0.602179  0.975274

df = pd.DataFrame(np.random.rand(6,4), index=pd.date_range('20180101',periods=6), columns=['A', 'B', 'C', 'D'])
print(df)
print('')
#                    A         B         C         D
# 2018-01-01  0.511538  0.950468  0.190566  0.017334
# 2018-01-02  0.166982  0.600663  0.544157  0.248252
# 2018-01-03  0.177636  0.594513  0.018743  0.031164
# 2018-01-04  0.860444  0.177588  0.421372  0.051273
# 2018-01-05  0.429182  0.394172  0.477872  0.635952
# 2018-01-06  0.979777  0.357605  0.582376  0.558253

print(df.head(1))
print('')
#                    A         B         C         D
# 2018-01-01  0.935789  0.928045  0.117388  0.609853

print(df.tail(3))
print('')
#                    A         B         C         D
# 2018-01-04  0.668800  0.928436  0.982858  0.709421
# 2018-01-05  0.591214  0.338080  0.943946  0.658759
# 2018-01-06  0.268511  0.752489  0.781594  0.583558

print(df.index)
print('')
# DatetimeIndex(['2018-01-01', '2018-01-02', '2018-01-03', '2018-01-04',
#                '2018-01-05', '2018-01-06'],
#               dtype='datetime64[ns]', freq='D')

print(df.columns)
print('')
# Index(['A', 'B', 'C', 'D'], dtype='object')

print(df.values)
print('')
# [[0.6608301  0.57493003 0.00630917 0.46842538]
#  [0.10188254 0.10695076 0.8904963  0.42562674]
#  [0.50016728 0.52064186 0.74653577 0.89391383]
#  [0.44432855 0.91766481 0.57518898 0.38529961]
#  [0.24862193 0.30317717 0.36085209 0.89761716]
#  [0.47067816 0.77912853 0.5754059  0.50406361]]

print(df.describe())
print('')
#               A         B         C         D
# count  6.000000  6.000000  6.000000  6.000000
# mean   0.502637  0.436631  0.371413  0.521360
# std    0.300782  0.334196  0.156503  0.254441
# min    0.055078  0.122276  0.184690  0.081407
# 25%    0.410416  0.222359  0.231602  0.423389
# 50%    0.449682  0.311137  0.400388  0.597092
# 75%    0.660503  0.595353  0.500414  0.707173
# max    0.933278  0.992380  0.533916  0.743214

print(df.T)
print('')
#    2018-01-01  2018-01-02  2018-01-03  2018-01-04  2018-01-05  2018-01-06
# A    0.923810    0.838260    0.340965    0.621474    0.867029    0.320508
# B    0.443949    0.760249    0.532694    0.475056    0.602357    0.552591
# C    0.403684    0.843556    0.608058    0.008643    0.373901    0.712189
# D    0.844045    0.192915    0.087313    0.886629    0.974380    0.596721

print(df.sort_values(by='B'))
print('')
#                    A         B         C         D
# 2018-01-05  0.558877  0.013989  0.001953  0.272343
# 2018-01-03  0.115511  0.516173  0.681411  0.063375
# 2018-01-06  0.176761  0.570792  0.224688  0.809491
# 2018-01-01  0.494202  0.670698  0.520678  0.135715
# 2018-01-02  0.797352  0.767461  0.638141  0.800131
# 2018-01-04  0.698874  0.978424  0.056593  0.017292

print(df[0:3])
print('')
#                    A         B         C         D
# 2018-01-01  0.441963  0.197905  0.031123  0.977095
# 2018-01-02  0.041120  0.484852  0.680601  0.353554
# 2018-01-03  0.238489  0.714997  0.088692  0.372628

print(df['20180102':'20180104'])
print('')
#                    A         B         C         D
# 2018-01-02  0.369056  0.143152  0.384015  0.530623
# 2018-01-03  0.734725  0.639670  0.540184  0.540572
# 2018-01-04  0.577396  0.653812  0.399167  0.663343

print(df.loc['20180101'])
print('')
# A    0.063576
# B    0.383470
# C    0.351103
# D    0.227865
# Name: 2018-01-01 00:00:00, dtype: float64

print(df.loc['20180102'], ['A', 'B'])
print('')
# なんか変だぞ
# A    0.220751
# B    0.507698
# C    0.572309
# D    0.941483
# Name: 2018-01-02 00:00:00, dtype: float64 ['A', 'B']

print(df.loc['20180102':'20180104'], ['A', 'B'])
print('')
#                    A         B         C         D
# 2018-01-02  0.608883  0.898617  0.001958  0.223063
# 2018-01-03  0.918837  0.396720  0.620067  0.888945
# 2018-01-04  0.957513  0.716906  0.070993  0.756830 ['A', 'B']

print(df.loc[:, ['A', 'B']])
print('')
#                    A         B
# 2018-01-01  0.357859  0.692162
# 2018-01-02  0.001719  0.972105
# 2018-01-03  0.798245  0.533705
# 2018-01-04  0.852393  0.733025
# 2018-01-05  0.543812  0.556456
# 2018-01-06  0.575222  0.139357

print(df.iloc[0,0])
print('')
# 0.06122463191639871

print(df.iloc[0:2, 0:2])
print('')
#                    A         B
# 2018-01-01  0.798279  0.049632
# 2018-01-02  0.099078  0.000767

print(df[df.A > 0.5])
print('')
#                    A         B         C         D
# 2018-01-01  0.618613  0.230789  0.743450  0.351913
# 2018-01-04  0.930553  0.668337  0.261251  0.493174
# 2018-01-05  0.748749  0.697890  0.584037  0.916274
# 2018-01-06  0.522357  0.753817  0.741497  0.541674

print(df[df > 0.5])
print('')
#                    A         B         C         D
# 2018-01-01       NaN       NaN  0.571484       NaN
# 2018-e01-02       NaN       NaN  0.803684       NaN
# 2018-01-03       NaN  0.514765  0.673423  0.525034
# 2018-01-04  0.968579  0.769473       NaN  0.750159
# 2018-01-05       NaN       NaN  0.935394  0.654728
# 2018-01-06  0.692743       NaN  0.607426       NaN

df2 = df.copy()
df2['E'] = ['df', 'of', 'df', 'of', 'sp', 'df']
print(df2)
print('')
#                    A         B         C         D   E
# 2018-01-01  0.308422  0.272715  0.815857  0.689906  df
# 2018-01-02  0.988477  0.780570  0.895865  0.317078  of
# 2018-01-03  0.438327  0.265851  0.197617  0.381762  df
# 2018-01-04  0.733893  0.758277  0.009468  0.187003  of
# 2018-01-05  0.270209  0.520910  0.053554  0.459060  sp
# 2018-01-06  0.121237  0.233541  0.328549  0.742439  df

print(df2[df2['E'].isin(['sp','df'])])
print('')
#                    A         B         C         D   E
# 2018-01-01  0.745338  0.314455  0.605179  0.831632  df
# 2018-01-03  0.412854  0.427524  0.875274  0.627276  df
# 2018-01-05  0.491846  0.549073  0.161369  0.890683  sp
# 2018-01-06  0.796345  0.449102  0.620324  0.701464  df

s = pd.Series([1, 2, 3, 4, 5, 6], index=pd.date_range('20180101', periods=6))
print(s)
print('')
# 2018-01-01    1
# 2018-01-02    2
# 2018-01-03    3
# 2018-01-04    4
# 2018-01-05    5
# 2018-01-06    6
# Freq: D, dtype: int64

df['E'] = s
print(df)
print('')
#                    A         B         C         D  E
# 2018-01-01  0.588896  0.148288  0.519905  0.134621  1
# 2018-01-02  0.708922  0.712593  0.505881  0.918827  2
# 2018-01-03  0.094199  0.275545  0.765209  0.770418  3
# 2018-01-04  0.055438  0.185414  0.150026  0.133834  4
# 2018-01-05  0.376010  0.319811  0.642369  0.545620  5
# 2018-01-06  0.221618  0.053074  0.068591  0.832277  6

print(df.shift(1))
print('')
#                    A         B         C         D    E
# 2018-01-01       NaN       NaN       NaN       NaN  NaN
# 2018-01-02  0.770204  0.081233  0.827693  0.194724  1.0
# 2018-01-03  0.544302  0.067122  0.525021  0.420438  2.0
# 2018-01-04  0.370495  0.021735  0.073266  0.203306  3.0
# 2018-01-05  0.054976  0.452047  0.756996  0.737973  4.0
# 2018-01-06  0.017435  0.165619  0.958294  0.632713  5.0

s1 = pd.Series(['a', 'b'])
s2 = pd.Series(['c', 'd'])
df = pd.concat([s1, s2])
print(df)
# 0    a
# 1    b
# 0    c
# 1    d
# dtype: object

# 14:02のところまでできた。