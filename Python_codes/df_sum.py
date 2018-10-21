import pandas as pd

df = pd.DataFrame([
    {"team":"gb","pos":"qb","score1": 100, "score2": 200},
    {"team":"ny","pos":"rb","score1": 10, "score2": 20},
    {"team":"gb","pos":"qb","score1": 1, "score2": 2}
],columns=["team","pos","score1","score2"])

print(df)
#行方向の合計
print("--")
print(df[["score1","score2"]].sum(axis=1))
#列方向の合計
print("--")
print(df[["score1","score2"]].sum(axis=0))

df_grouped = df.groupby("team")  # teamでGroup_byを行う。
print(df_grouped[["score1","score2"]].sum())

df_grouped = df.groupby(["team","pos"])  # team,posでGroup_byを行う。
print(df_grouped[["score1","score2"]].sum())