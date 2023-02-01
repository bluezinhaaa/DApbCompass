#Implemente duas classes Pato e Pardal que herdem de uma 
# classe Passaro a habilidade de voar e emitir som, porém, 
# tanto Pato quanto Pardal devem emitir sons diferentes 
# (de maneira escrita) no console.
#Imprima no console exatamente assim:
#Pato
#Voando...
#Pato emitindo som...
#Quack Quack
#Pardal
#Voando...
#Pardal emitindo som...
#Piu Piu

class Passaro:
    def __init__(self, voar, emitir_som):
        self.voar = voar
        self.emitir_som = emitir_som
   
class Pato(Passaro):
    def __init__(self, voar, emitir_som, especie):
        super().__init__(voar, emitir_som)
        self.especie = especie


class Pardal(Passaro):
    def __init__(self, voar, emitir_som, especie):
        super().__init__(voar, emitir_som)
        self.especie = especie


pato = Pato('Voando...', 'Quack Quack', 'Pato')
pardal = Pardal('Voando...', 'Piu Piu', 'Pardal')

print(pato.especie)
print(pato.voar)
print(f'{pato.especie} emitindo som...')
print(pato.emitir_som)
print(pardal.especie)
print(pardal.voar)
print(f'{pardal.especie} emitindo som...')
print(pardal.emitir_som)




