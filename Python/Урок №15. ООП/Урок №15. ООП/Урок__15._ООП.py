#1. Создайте объект Autobus, который унаследует все переменные и методы родительского класса Transport и выведете его.
 
#class Transport:
#
#    def __init__(self, name, max_speed, mileage):
#        self.name = name
#        self.max_speed = max_speed
#        self.mileage = mileage
#
#Autobus = Transport("Renaul Logan", 180, 12)
#print(f'Название автомобиля: {Autobus.name} Скорость: {Autobus.max_speed} Пробег: {Autobus.mileage}')

#-----------------------------------------------------------------------------------------------------------------------

#Создайте класс Autobus, который наследуется от класса Transport.
#Дайте аргументу Autobus.seating_capacity() значение по умолчанию 50.
#Используйте переопределение метода.

class Transport:
    def __init__(self, name, max_speed, mileage):
        self.name = name
        self.max_speed = max_speed
        self.mileage = mileage

    def seating_capacity(self, capacity):
        print(f"Вместимость одного автобуса {self.name}: {capacity} пассажиров")

class Autobus(Transport):
    capacity = 50
    def seating_capacity(self, capacity):
        self.capacity = capacity
        print(f"Вместимость одного автобуса {self.name}: {capacity} пассажиров")


auto = Autobus("Renaul Logan", 180, 12)
auto.seating_capacity(Autobus.capacity)
