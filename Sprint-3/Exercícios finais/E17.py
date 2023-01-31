#Escreva uma função que recebe como parâmetro uma lista 
# e retorna 3 listas: a lista recebida dividida em 3 
# partes iguais. Teste sua implementação com a lista abaixo


def fatia_lista(lista):
    fatia = len(lista) // 3
    lista_um = lista[:fatia]
    lista_dois = lista[fatia:2*fatia]
    lista_tres = lista[2*fatia:]
    return lista_um, lista_dois, lista_tres

lista = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12]
fatia1, fatia2, fatia3 = fatia_lista(lista)
print(fatia1, fatia2, fatia3)