#Crie uma classe  Calculo  que contenha um método que 
# aceita dois parâmetros, X e Y, e retorne a soma dos 
# dois. Nessa mesma classe, implemente um método de subtração, 
# que aceita dois parâmetros, X e Y, e retorne a subtração dos 
# dois (resultados negativos são permitidos).
#Utilize os valores abaixo para testar seu exercício:
#x = 4 
#y = 5
#imprima:
#Somando: 4+5 = 9
#Subtraindo: 4-5 = -1


class calculo():

    def somar(self, x, y):
        return x + y

    def subtrair(self, x, y):
        return x - y

resposta = calculo()
x = 4
y = 5
print(f'Somando:{x}+{y} =' ,resposta.somar(x, y))
print(f'Subtraindo:{x}-{y} =' ,resposta.subtrair(x, y))


    
#obs: a udemy só aceitou a classe "calculo" com a letra inicial minúscula.