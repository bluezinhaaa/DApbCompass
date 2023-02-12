#Você está recebendo um arquivo contendo 10.000 números 
#inteiros, um em cada linha. Utilizando lambdas e high 
#order functions, apresente os 5 maiores valores pares e 
#a soma destes.
#Você deverá aplicar as seguintes funções no exercício:
#map, filter, sorted, sum
#Seu código deverá exibir na saída (simplesmente utilizando 2 comandos `print()`):
#a lista dos 5 maiores números pares em ordem decrescente;
#a soma destes valores.

dezmil = []
dezmil = list(map(int, open(r'number.txt', 'r').read().split()))
dezmil = sorted(dezmil)
dezmil_pares = list(filter(lambda x: (x%2 == 0), dezmil))
dezmil_pares_rev = list(reversed(dezmil_pares))
lista = dezmil_pares_rev[0],dezmil_pares_rev[1],dezmil_pares_rev[2],dezmil_pares_rev[3],dezmil_pares_rev[4]
print(lista)
print(sum(lista))


