#Apresente a média da coluna contendo o número de filmes.

import pandas

df = pandas.read_csv('actors.csv')

media_filmes = df['Number of Movies'].mean()
print(media_filmes)