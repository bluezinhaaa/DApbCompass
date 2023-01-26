#Verifique se cada uma das palavras da lista ['maça', 'arara', 'audio', 'radio', 'radar', 'moto'] 
# é ou não um palíndromo.
#Obs: Palíndromo é uma palavra que permanece igual se lida de traz pra frente.

a = ['maça', 'arara', 'audio', 'radio', 'radar', 'moto']

for x in a:
    if x == x[::-1]:
        print('A palavra:' ,x, 'é um palíndromo')
    else:
        print('A palavra:' ,x, 'não é um palíndromo')