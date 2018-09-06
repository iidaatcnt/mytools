import pandas as pd

df_count = 42000
named_labels = pd.DataFrame(index=range(df_count))
named_labels['labels'] = "|labels"

print(named_labels)