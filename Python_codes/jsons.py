import json

j = {
  "foo": [ False, 2 ],
  "baz": {
    "foo": [ True, "bar" ],
    "baz": "qux"
  }
}

#
print("-" * 10)
print(j)
print("-" * 10)

#
print(json.dumps(j))

a = json.dumps(j)
print(json.loads(a))

#
with open('test.json', 'w') as f:
    json.dump(j, f)

#
with open('test.json', 'r') as f:
    json.load(f)
