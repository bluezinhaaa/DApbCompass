#Escreva uma função que recebe uma string de números separados 
# por vírgula e retorne a soma de todos eles. Depois imprima a 
# soma dos valores.
#A string deve ter valor  "1,3,4,6,10,76"

def somar(numeros_str):
    numeros = [int(n) for n in numeros_str.split(",")]
    return sum(numeros)

numeros_str = "1,3,4,6,10,76"
soma = somar(numeros_str)
print(soma)