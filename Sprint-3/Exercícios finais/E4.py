#Escreva um código Python que imprime todos os números primos de 0 até 100.

for x in range(0, 100 + 1): 
  if x > 1: 
    for i in range(2, x): 
        if(x % i == 0): 
            break
    else: 
        print(x)