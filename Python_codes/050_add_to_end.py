
# coding: utf-8

# # 050_行毎にend列にadd列の日数を加算してend列を更新する関数を作成
# 
# ## 目的
# 
# - 行毎にend列にadd列の日数を加算してend列を更新
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


import datetime
from utils import transform_datetime, transform_object

def add_to_end(dfm):
    """
    func
    行毎にend列にadd列の日数を加算してend列を更新
    In
    dfm : pd.DataFrame（変換用）
    Out
    added_dfm : end列を更新した後のpd.DataFrame
    """
    # end列をdatetime64型に変換する
    date_columns = ["end"]
    added_dfm = transform_datetime(dfm, date_columns)

    # end列にadd列分の日数を加算してend列を更新する
    added_dfm["end"] = added_dfm["end"] + added_dfm["add"].map(datetime.timedelta)

    # end列を元の文字列型に直す
    added_dfm = transform_object(added_dfm, date_columns)

    return added_dfm


# ## 3. 出力

# In[3]:


df = create_df()
df


# In[4]:


added_df = add_to_end(df)
added_df

