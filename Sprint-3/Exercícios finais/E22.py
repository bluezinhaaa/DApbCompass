#Crie uma classe Pessoa que tenha um atributo privado 
# nome e um atributo público id.  Na sequência, adicione 
# uma função que atribua um valor a nome  e uma função 
# que retorne o valor de nome.
#Importante: Para atributos privados utilizamos “__” Ex: __atributo
#Para testar seu código use:
#pessoa = Pessoa(0) 
#pessoa.nome = 'Fulano De Tal'
#print(pessoa.nome)

class Pessoa:

    def __init__(self, nome, id):
        self.__nome = nome
        self._id = id

    def nomear(self):
        self.__nome = 'Fulano De Tal'
        

    def diz_nome(self):
        return self.__nome

pessoa = Pessoa("nome", 10)
pessoa.nomear()
print(pessoa.diz_nome())