﻿#1. Пользователь вводит стороны прямоугольника, выведите его площадь и периметр. 
#На вход программе могут подаваться как целые числа, так и вещественные

#a, b, = map(int, input("Введите стороны прямоугольника в см через пробел -> ").split())
#print("Периметр данного прямоугольника-> ", 2*(a+b) )
#print("Площадь данного прямоугольника -> ", a*b)

#2. Дано пятизначное целое число. Напишите алгоритм, который возведёт количество десятков в степень количества единиц. 
#Затем умножит это число на количество сотен. И делит получившееся число на разность количества десятков тысяч и 
#количества тысяч
#Например, есть число 46275
#Необходимо возвести 7 (десятки) в степень 5 (единицы), умножить получившееся число на 2 (сотни), и 
#разделить на разность между 4 (десятки тысяч) и 6 (тысячи) то есть (4-6)
#В результате необходимо получить вещественное число. В нашем примере это будет: -16807.0

a, b, c, d, e = map(int, input("Введите пятизначное число через пробел-> ").split())
print((d**e*c)/(a-b))
