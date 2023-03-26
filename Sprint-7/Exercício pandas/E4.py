#Apresente o nome do(s) filme(s) mais frequente(s) e sua respectiva frequência.

import pandas

df = pandas.read_csv('actors.csv')

nome_filme = df['#1 Movie'].value_counts().idxmax()
qnt_filme = df['#1 Movie'].value_counts().max()
print(nome_filme,  " - " ,qnt_filme)

