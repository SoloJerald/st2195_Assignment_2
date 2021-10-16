import pandas as pd

df =pd.read_html('https://en.wikipedia.org/wiki/Comma-separated_values')

print(df[1])

df[1].to_csv('Python.csv')
