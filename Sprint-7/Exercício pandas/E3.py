#Apresente o nome do ator/atriz com a maior média por filme.

import pandas

df = pandas.read_csv('actors.csv')

maior_media = df.loc[df['Average per Movie'].idxmax()]
print(maior_media['Actor'], " - " ,maior_media['Average per Movie'])