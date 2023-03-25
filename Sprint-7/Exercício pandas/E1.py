#Identifique o ator/atriz com maior número de filmes e o respectivo número de filmes.

import pandas

df = pandas.read_csv('actors.csv')

mais_filmes = df.loc[df['Number of Movies'].idxmax()]
print(mais_filmes['Actor'], " - " ,mais_filmes['Number of Movies'])





