import json


#
# # ファイルダンプする/ファイルに書き込むする
# print("### jsonをファイルに書き込む dumpでdumpsではない")
# with open('sample.json', 'w') as f:
#     json.dump(j, f)
#
print("### jsonファイルを読み込む")
with open('sample.json', 'r') as f:
    json_dict = json.load(f)

print(json_dict['book1'])

# a = json_dict['book1']
# b = json_dict['book2']
#
# print(a['title'])
# print(b['title'])

print(json_dict['book1']['title'])
print(json_dict['book2']['title'])
