drop database shops;
-- 1. Создать БД
create database if not exists shops;
use shops;

-- 2. Создать таблицу магазинов с полями: id, title, address,city, working hours
create table if not exists stores
(
id int,
title varchar(40),
address varchar(50),
city varchar(50),
working_hours varchar(30),
-- 3. По полям id, title сделать индексы
index (id, title)
);

-- 4. Добавить в таблицу магазинов следующие записи
insert into stores values
(0, 'Пятёрочка', 'ул. Семёнова, 47', 'Москва', '8:00-22:00'),
(1, 'Перекрёсток', 'ул. Семёнова, 48', 'Москва', 'круглосуточно'),
(2, 'Пятёрочка', 'ул. Вовы, 32', 'Санкт-Петербург', '8:30-22:30'),
(3, 'Перекрёсток', 'ул. Татьяны Б., 1', 'Ижевск', '9:00-21:00');

-- 5. Изменить названия "Пятёрочка" на "Пятёрочка 2"
update stores set title = 'Пятёрочка 2' where title = 'Пятёрочка';

-- 6. Изменить адрес магазинов в городе Ижевске на "пр-т Орлова, 33"
update stores set address = 'пр-т Орлова, 33' where city = 'Ижевск';

-- 7. Изменить название и адрес круглосуточных магазинов на "Всегда открыто" и "Рядом с домом" соответственно
update stores set title = 'Всегда открыто' where working_hours = 'круглосуточно';

-- 8. Удалить запись с id=2
delete from stores where id = 2;

-- 9. Показать получившийся результат
select * from stores;