import json

j = {"widget": {
    "debug": "on",
    "window": {
        "title": "Sample Konfabulator Widget",
        "name": "main_window",
        "width": 500,
        "height": 500
    },
    "image": {
        "src": "Images/Sun.png",
        "name": "sun1",
        "hOffset": 250,
        "vOffset": 250,
        "alignment": "center"
    },
    "text": {
        "data": "Click Here",
        "size": 36,
        "style": "bold",
        "name": "text1",
        "hOffset": 250,
        "vOffset": 100,
        "alignment": "center",
        "onMouseUp": "sun1.opacity = (sun1.opacity / 100) * 90;"
    }
}}

#
print("### print(j)")
print(j)
print("-" * 10)

# スクリプト内でjsonをダンプ/読み込みする
print("### json.dumps()  jsonを表示する")
print(json.dumps(j))

print("### json")
a = json.dumps(j)
print(json.loads(a))


# ファイルダンプする/ファイルに書き込むする
print("### jsonをファイルに書き込む dumpでdumpsではない")
with open('test2.json', 'w') as f:
    json.dump(j, f)

print("### jsonファイルを読み込む")
with open('test2.json', 'r') as f:
    print(json.load(f))
print("-" * 10)