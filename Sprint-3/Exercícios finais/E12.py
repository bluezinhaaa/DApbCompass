#Leia o arquivo person.json, faça o parsing e imprima seu conteúdo.
#Dica: leia a documentação do pacote json

import json
with open('person.json', 'r') as f:
    x = f.read()
    json_x = json.loads(x)
print(json_x)