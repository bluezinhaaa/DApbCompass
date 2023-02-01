#Calcule o valor mínimo, valor máximo, valor médio e a mediana da lista gerada na célula abaixo:
#Obs.: Lembrem-se, para calcular a mediana a lista deve estar ordenada!
#import random 
# amostra aleatoriamente 50 números do intervalo 0...500
#random_list = random.sample(range(500),50)
#Use as variáveis abaixo para representar cada operação matemática
#mediana
#media
#valor_minimo 
#valor_maximo 

import random
import statistics

random_list = random.sample(range(500), 50)
random_list_somada = sum(random_list)
tam_list = len(random_list)

mediana = statistics.median(random_list)
media = random_list_somada / tam_list
valor_minimo = min(random_list)
valor_maximo = max(random_list)

#print(random_list)
print(f'Media: {media}, Mediana: {mediana}, Mínimo: {valor_minimo}, Máximo: {valor_maximo}')
#print(media)
#print(valor_minimo)
#print(valor_maximo)