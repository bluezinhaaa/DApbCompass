#Implemente a classe Lampada. A classe Lâmpada recebe um booleano
#  no seu construtor, True se a lâmpada estiver ligada, False 
# caso esteja desligada. A classe Lampada possuí os seguintes métodos:
#liga(): muda o estado da lâmpada para ligada
#desliga(): muda o estado da lâmpada para desligada
#esta_ligada(): retorna verdadeiro se a lâmpada estiver ligada, falso caso contrário
#Para testar sua classe:
#Ligue a Lampada
#Imprima: A lâmpada está ligada? True
#Desligue a Lampada
#Imprima: A lâmpada ainda está ligada? False

class Lampada:

    def __init__(self, ligada, desligada):
        self._ligada = False
        self._desligada = True
        
    def liga(self):
        self._ligada = True
        self._desligada = False
        
    def desliga(self):
        self._desligada = True
        self._ligada = False
        
    def esta_ligada(self):
        return self._ligada

lamp1 = Lampada(False, True)
lamp1.liga()
print(f'A lâmpada está ligada? {lamp1.esta_ligada()}')
lamp1.desliga()
print(f'A lâmpada ainda está ligada? {lamp1.esta_ligada()}')