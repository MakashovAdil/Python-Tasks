import random
# C помощью цикла создайте матрицу вида 10x10
a = int(input('Столбцы -> '))
b = int(input('Строки -> '))
matrix1 = [ [ random.randint(-99, 99) for j in range(a)] for i in range(b) ]
for i in matrix1:
   print(i)
print('------------------------------------------------------------------------------------------------------------')

matrix2 = [ [ random.randint(-99, 99) for j in range(a)] for i in range(b) ]
for i in matrix2:
   print(i)
print('------------------------------------------------------------------------------------------------------------')

summ = [0] * a 
for i in range(a): 
    summ[i] = [0] * b
    
for i in summ:
    print(i)
print('------------------------------------------------------------------------------------------------------------')

#or i in range(b):
#   print(matrix1[i])

for i in range(len(matrix1)):
    for k in range(len(matrix1[0])):
       summ[i][k] = matrix1[i][k] + matrix2[i][k]

for i in summ:
   print(i)