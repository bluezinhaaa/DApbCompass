class Pessoa:

    def __init__(self, nome, idade, altura):
        self.__nome = nome
        self.__idade = idade
        self.__altura = altura
    
    def mostra_nome(self):
        return(self.__nome)

    def mostra_idade(self):
        return(self.__idade)

    def mostra_altura(self):
        return(self.__altura)

    def definir_nome(self, x):
        self.__nome = x
    
    def definir_idade(self, x):
        self.__idade = x

    def definir_altura(self, x):
        self.__altura = x

    def imprimir_dados(self):
        print(self.mostra_nome(), self.mostra_idade(), self.mostra_altura())


pessoa1 = Pessoa('João', 30, 1.70)
pessoa1.imprimir_dados()

pessoa1.definir_nome('Maria')
pessoa1.definir_idade(32)
pessoa1.definir_altura(1.72)

print(pessoa1.mostra_nome(), pessoa1.mostra_idade(), pessoa1.mostra_altura())
