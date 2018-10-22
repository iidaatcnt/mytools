
# coding: utf-8

# # 060_日付fireがstartとendの範囲内にあるか無いか真偽値を末尾にchkという列に追加する関数を作成
# 
# ## 目的
# 
# - 日付fireがstartとendの範囲内にあるか無いか真偽値を末尾にchkという列に追加
# - fireがstart, endの境界上にある場合、「ある」と判定
# 
# ## 条件
# 

# ## 1. 入力：データフレームを作成

# In[1]:


import pandas as pd


def create_df():
    df = pd.DataFrame(
        [
            {"id":"a00", "fire":"2018-09-30","start": "2018-10-01", "end":"2018-10-10", "add": -1},
            {"id":"a00", "fire":"2018-10-01","start": "2018-10-01", "end":"2018-10-10", "add": 0},
            {"id":"a01", "fire":"2018-10-05","start": "2018-10-01", "end":"2018-10-10", "add": 1},
            {"id":"a02", "fire":"2018-10-10","start": "2018-10-01", "end":"2018-10-10", "add": 5},
            {"id":"a03", "fire":"2018-10-15","start": "2018-10-01", "end":"2018-10-10", "add": 10},
            {"id":"a04", "fire":"2018-10-20","start": "2018-10-01", "end":"2018-10-10", "add": 15},
            {"id":"a05", "fire":"2018-11-01","start": "2018-10-01", "end":"2018-10-10", "add": 20},
            {"id":"a06", "fire":"2018-11-05","start": "2018-10-01", "end":"2018-10-10", "add": 30},
            {"id":"a07", "fire":"2018-11-10","start": "2018-10-01", "end":"2018-10-10", "add": 50},
            {"id":"a08", "fire":"2019-10-01","start": "2018-10-01", "end":"2018-10-10", "add": 100},
            {"id":"a09", "fire":"2019-10-05","start": "2018-10-01", "end":"2020-10-10", "add": 1000}
        ], columns=["id", "fire", "start", "end", "add"]
    )
    return df

df = create_df()
df


# ## 2. 処理

# In[2]:


from utils import transform_datetime, transform_object

def is_between(dfm):
    """
    func
    日付fireがstartとendの範囲内にあるか無いか真偽値を末尾にchkという列に追加
    - fireがstart, endの境界上にある場合、「ある」と判定
    In
    dfm : pd.DataFrame（変換用）
    Out
    added_dfm : chk列を追加した後のpd.DataFrame
    """
    # fire, start, end列をdatetime64型に変換する
    date_columns = ["fire", "start", "end"]
    added_dfm = transform_datetime(dfm, date_columns)

    # 日付fireがstartとendの範囲内にあるか無いか真偽値を末尾にchkという列に追加
    added_dfm["chk"] = (added_dfm["start"] <= added_dfm["fire"]) & (added_dfm["fire"] <= added_dfm["end"])

    # fire, start, end列を元の文字列型に直す
    added_dfm = transform_object(added_dfm, date_columns)

    return added_dfm


# ## 3. 出力

# In[3]:


df = create_df()
df


# In[5]:


added_df = is_between(df)
added_df


# In[ ]:


コメント：fireは範囲はstartからend＋addの範囲にあるかないで判断したいです。

