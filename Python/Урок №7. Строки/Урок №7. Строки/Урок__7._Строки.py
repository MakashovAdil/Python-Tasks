﻿#1. На вход подается 1 строка без пробелов. По данной строке определите, является ли она палиндромом 
#(то есть, можно ли прочесть ее наоборот, как, например, слово "шалаш"). 
#Необходимо вывести ”yes”, если строка является палиндромом, и “no” в противном случае.

#txt = input("Введите строку без пробелов -> ")
#text = txt.lower()
#txet = text[ : : -1]
#if text == txet:
#    print("Yes")
#else:
#    print("No")

#-----------------------------------------------------------------------------------------------------------------------

#2. Дана строка, длина которой не превосходит 1000. Вам требуется преобразовать все идущие подряд пробелы в один. 
#Выведите измененную строку.

txt = input("Введите строку, длина которой не превосходит 1000 -> ")
if len(txt) > 1000:
    print("Конец.")
else:
    a = " ".join(txt.split())
    print(a)
