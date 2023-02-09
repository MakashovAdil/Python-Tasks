use test;
-- Для каждой функции из урока написать по 2 запроса на выборку и преобразование данных
-- Можно использовать базы данных с текущего и прошлых уроков
-- Запросы не обязательно должны быть сложными. Функции можно комбинировать

-- Соединение строк:
select concat('Торт', ' - ', 'это ', 'ложь', '!');
select concat('Это', ' - ', 'СПАРТА!');
select concat(id, ' - ', Название) as 'id - title' from сериалы;
-- Функция показывающая длину строки:
select length('Интересно, сколько тут символов? Придется считать вручную(');
select length('Я уже говорил тебе, что такое безумие?');
select concat(id, ' - ', length(Описание)) as 'Кол-во символов в описании' from сериалы;
-- Функция убирающая пустые символы в начале и в конце:
select trim('    Наша принцесса в другом замке!    ');
select trim('  FINISH HIM!  ');
-- Функция вырезающая из строки под строку:
select substring('Будь готов к тому, что ты можешь быть не прав', 24);
select substring('Кто ищет, тот всегда найдет… если правильно ищет', 1, 27);
select substring(Комментарий, 1, 40) as 'То что нужно' from отзывы where id = 5;
-- Функция переворачивающая строку:
select reverse('!осям еежевС');
select reverse('Миру – мир, Риму – Рим.');
select reverse(Сериалы) as 'МОИ ГЛАЗА' from жанры;
-- Функция переводящая строку в верхний регистр:
select upper('Хватит Кричать!');
select upper('Я очень устал(');
select upper(Название) as 'Время пошуметь' from сериалы;
-- Функция переводящая строку в нижний регистр:
select lower('ЧТО? МОЖНО ПОГРОМЧЕ!');
select lower('Я ХОЧУ КУШАТЬ!');
select lower(Название) as 'Долой орфографию' from сериалы;
-- Функция округления цисел:
select round(2.7182818284, 2);
select round(1423.49502, -2);
-- Функция отсавляющая в дробной части определенное кол-во чисел:
select truncate(3.1415926535, 2);
select truncate(39.2311412, 2);
-- Функция выводящая модуль числа:
select abs(-2342);
select abs(-3049);
-- Функция округляющая вниз:
select floor(453.993);
select floor(99.9999);
-- Функция округляющая вверх:
select ceiling(99.99);
select ceiling(45.000001);
-- Функция возведения в степень:
select power(6, 2);
select power(9, 6);
-- Функция квадратного корня:
select sqrt(121);
select sqrt(9801);
-- Функция знaка числа:
select sign(-12);
select sign(23);
select sign(0);
-- Фукнция выводящая случайное число от 0 до 1:
select rand();
select rand(), rand(), rand();
-- Фукнция выводящая текущую дату и время:
select now(); -- Время начала скрипта
select sysdate(); -- Системное время
select current_timestamp(); -- Зависит от начала скрипта
select now(), sysdate(), sleep(10), now(), sysdate();
-- Фукнция выводящая текущую дату:
select current_date();
select curdate();
-- Фукнция выводящая текущее время:
select current_time();
select curtime();
-- Фукнция выводящая дату по UTC:
select utc_date();
-- Фукнция выводящая время по UTC:
select utc_time();

select dayofmonth(Дата_регистрации) from пользователи;
select dayofweek(Дата_выхода) from сериалы;
use vk; select dayofyear(enter_datatime) from user_to_chats;
use test; select month(Дата_регистрации) from пользователи;
select year('2077-07-14');
select quarter('2003-07-14');
select week('2003-07-14');
select week('2003-07-14', 1);
select last_day('2024-02-23');
select dayname('2003-07-14');
select monthname('2016-08-23');
select hour('09:34:27');
select minute('14:56:07');
select second('00:06:54');

-- Добавить к дате:
select date_add('2003-07-14', interval 171 day);
select date_add('2022-10-26', interval 32 month);
select date_add('2003-07-14 14:56:07', interval 32 hour);
-- Вычесть из даты:
select date_sub('2022-10-26', interval 152 day);
-- Разница дaт:
select datediff('2022-10-26', '2003-07-14');
select datediff('2022-10-26', '2023-01-01');
-- Форматирование:
select date_format('2022-01-23 13:00:04', '%c');
select time_format('2022-01-23 13:00:04', '%S');
-- Очень много функций




