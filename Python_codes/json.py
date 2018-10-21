import json
import pprint

j = {
    "inputdata":
        {
            "drink":
                [
                    {"id": "an01", "type": "01", "kind": 100, "price": 700},
                    {"id": "an02", "type": "01", "kind": 100, "price": 700}
                ],
            "food":
                [
                    {"id": "ah01", "type": "01", "kind": 100, "price": 900},
                    {"id": "ah01", "type": "01", "kind": 100, "price": 900}
                ]
        }
}
print(j)
print("-" * 20)
s = json.dumps(j)
print(s)
print("-" * 20)
p = json.loads(s)
print(p)
print("-" * 20)
pp = pprint.PrettyPrinter(indent=4,width=80)
pp.pprint(p)

print('j=',type(j))