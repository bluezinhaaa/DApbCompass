#Escreva uma função que recebe uma lista e retorna uma nova lista 
# sem elementos duplicados. Utilize a lista a seguir para testar sua função.
#['abc', 'abc', 'abc', '123', 'abc', '123', '123']

lista = ['abc', 'abc', 'abc', '123', 'abc', '123', '123']

def sem_duplo(lista):
    
    lista_nova = list(set(lista))
    return lista_nova

print(sem_duplo(lista))
