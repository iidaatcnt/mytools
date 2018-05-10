import json

j = {
  "foo": [ False, 2 ],
  "baz": {
    "foo": [ True, "bar" ],
    "baz": "qux"
  }
}

# json$B$rI=<($9$k(B
print("-" * 10)
print(j)
print("-" * 10)

# json$B$r%@%s%W$9$k(B
print(json.dumps(j))

a = json.dumps(j)
print(json.loads(a))

# $B%U%!%$%k$K=q$-9~$`(B
with open('test.json', 'w') as f:
    json.dump(j, f)

# $B%U%!%$%k$+$iFI$_9~$`(B
with open('test.json', 'r') as f:
    json.load(f)
