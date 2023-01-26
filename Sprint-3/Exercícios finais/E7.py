#Dada a seguinte lista:
#a = [1, 4, 9, 16, 25, 36, 49, 64, 81, 100]
#Faça um programa que gere uma nova lista contendo apenas números ímpares.

a = [1, 4, 9, 16, 25, 36, 49, 64, 81, 100]
impar = []

for x in (a):
    if x % 2 == 1:
       impar.append(x)
       
print(impar)



