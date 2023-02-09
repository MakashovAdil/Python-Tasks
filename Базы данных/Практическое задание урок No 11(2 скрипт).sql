drop database if exists maildb;
create database if not exists maildb;
use maildb;
create table Почтовые_отделения 
(
id int primary key,
адрес varchar(50), 
часы_работы varchar(50)
);

create table Работники 
(
ФИО varchar(100), 
паспортные_данные varchar(50), 
адрес_проживания varchar(50), 
номер_трудовой_книжки int,
id_отделения int,
FOREIGN KEY (id_отделения) REFERENCES Почтовые_отделения(id)
);

create table Посылки 
(
вес int, 
категория varchar(50), 
трек_номер int,
номер_отделения int,
FOREIGN KEY (номер_отделения) REFERENCES Почтовые_отделения(id)
);