﻿#2 Задание.
#Евгению предоставили строку, состоящую из русских букв разных регистров, и попросили очистить ее от заглавных литер.
#Как ему показалось, он написал верный код, но результат совсем не порадовал.
#Ниже представлен пример работы «чистильщика строк», которому срочно требуется ваша помощь.
#letters = 'ЫбВЫуЯСдущДШНККАеЩЙФеРФО'
#for letter in letters:
#____if letter.upper() = letters:
#________letters.replace(letter, '')
#print(letters)

letters = 'ЫбВЫуЯСдущДШНККАеЩЙФеРФО'
text = ''
for letter in letters:
    if letter.islower():
        text += letter
text
print(text)
