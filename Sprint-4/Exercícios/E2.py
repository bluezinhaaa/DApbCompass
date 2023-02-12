#Utilizando high order functions, implemente o corpo da função 
#conta_vogais. O parâmetro de entrada será uma string e o resultado 
#deverá ser a contagem de vogais presentes em seu conteúdo.
#É obrigatório aplicar as seguintes funções:
#len, filter, lambda
#Desconsidere os caracteres acentuados. Eles não serão utilizados nos testes do seu código.

def conta_vogais(texto: str) -> int:
    contar = ['a','A','e','E','i','I','o','O','u','U']
    return len(list(filter(lambda letra: letra in contar, texto)))

#teste:
texto = input('Digite uma string: ')
print(conta_vogais(texto))
