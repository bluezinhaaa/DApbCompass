#A função calcular_valor_maximo deve receber dois parâmetros, 
#chamados de operadores e operandos. Em operadores, espera-se 
#uma lista de caracteres que representam as operações matemáticas 
#suportadas (+, -, /, *, %), as quais devem ser aplicadas à lista 
#de operadores nas respectivas posições. Após aplicar cada operação 
#ao respectivo par de operandos, a função deverá retornar o maior valor dentre eles.
#Veja o exemplo:
#Entrada
#operadores = ['+','-','*','/','+']
#operandos  = [(3,6), (-7,4.9), (8,-8), (10,2), (8,4)]
#Aplicar as operações aos pares de operandos
#[ 3+6 , -7-4.9, 8*-8 , 10/2 , 8+4 ] 
#Obter o maior dos valores
#12
#Na resolução da atividade você deverá aplicar as seguintes funções:
#max, zip, map

operadores = ['%','-','*','/','+']
operandos  = [(3,6), (-7,4.9), (8,-8), (10,2), (8,4)]

soma = lambda numero: numero[0] + numero[1]
subtracao = lambda numero: numero[0] - numero[1]
multiplicacao = lambda numero: numero[0] * numero[1]
divisao = lambda numero: numero[0] / numero[1]
resto = lambda numero: numero[0] % numero[1]

operacoes_matematicas = {'+': soma, '-': subtracao, '*': multiplicacao, '/': divisao, '%': resto}

def calcular_valor_maximo(operadores,operandos) -> float:
    resultado = list(zip(operadores, operandos))
    return max(list(map(lambda operador : operacoes_matematicas[operador[0]](operador[1]), resultado)))

print(calcular_valor_maximo(operadores, operandos))
