#1. Создайте класс Касса, который хранит текущее количество денег в кассе, у него есть методы:
# top_up(X) - пополнить на X
# count_1000() - выводит сколько целых тысяч осталось в кассе
# take_away(X) - забрать X из кассы, либо выкинуть ошибку, что не достаточно денег

#class Cash:
#
#    def __init__(self, money):
#        self.money = money
#
#    def top_up(self, X):
#        self.money += X
#        print(self.money)
#
#    def take_away(self, X):
#       if self.money >= X:
#           self.money -= X
#           print(self.money)
#       else:
#           print("Недостаточно средств")
#
#    def count_1000(self):
#        x = self.money // 1000
#        print(x)
#
#a = Cash(3500)
#a.top_up(1000)
#a.take_away(500)
#a.count_1000()
#----------------------------------------------------------------------------------------------------------------------

#2. Создайте класс Черепашка, который хранит позиции x и y черепашки, а также s - количество клеточек, на которое она перемещается за ход
#у этого класс есть методы:
#
# - go_up() - увеличивает y на s
# - go_down() - уменьшает y на s
# - go_left() - уменьшает x на s
# - go_right() - увеличивает x на s
# - evolve() - увеличивает s на 1
# - degrade() - уменьшает s на 1 или выкидывает ошибку, когда s может стать ≤ 0
# - count_moves(x2, y2) - возвращает минимальное количество действий, за которое черепашка сможет добраться до x2 y2 от текущей позиции

class Turtle:

    def __init__(self, x, y, s):
        self.position_x = x
        self.position_y = y
        self.cells = s

    def go_up(self):
        self.position_y += self.cells

    def go_down(self):
        self.position_y -= self.cells

    def go_left(self):
        self.position_x -= self.cells

    def go_right(self):
        self.position_x += self.cells 

    def evolve(self):
        self.cells += 1

    def degrade(self):
        if self.cells <= 0:
            print("s не может быть меньше нуля")
        else:
            self.cells -= 1

    def count_moves(self, x2, y2):
        steps = 0
        while self.position_x != x2:
            if x2 < 0:
                self.position_x -= self.cells
                steps += self.cells
            elif x2 > 0:
                self.position_x += self.cells
                steps += self.cells
            else: 
                self.position_x == self.position_x

        while self.position_y != y2:
            if y2 < 0:
                self.position_y -= self.cells
                steps += self.cells
            elif y2 > 0:
                self.position_y += self.cells
                steps += self.cells
            else: 
                self.position_y == self.position_y

        print(steps)

t = Turtle(0, 0, 1)
t.count_moves(5,5)




