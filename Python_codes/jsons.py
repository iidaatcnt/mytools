import json

j = {
  "foo": [ False, 2 ],
  "baz": {
    "foo": [ True, "bar" ],
    "baz": "qux"
  }
}

# jsonを表示する
print("-" * 10)
print(j)
print("-" * 10)

# jsonをダンプする
print(json.dumps(j))

a = json.dumps(j)
print(json.loads(a))

# ファイルに書き込む
with open('test.json', 'w') as f:
    json.dump(j, f)

# ファイルから読み込む
with open('test.json', 'r') as f:
    json.load(f)
