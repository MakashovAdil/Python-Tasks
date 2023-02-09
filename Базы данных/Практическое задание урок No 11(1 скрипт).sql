drop database if exists docsdb;
create database if not exists docsdb;
use docsdb;
create table Паспорт 
(
идентификатор int  primary key, 
номер int NOT NULL,  
серия int NOT NULL, 
кем_выдан varchar(50), 
когда_выдан date, 
код_подразделения int
);

create table Гражданин 
(
идентификатор int primary key unique, 
фамилия varchar(40) NOT NULL,
имя varchar(40) NOT NULL,
отчество varchar(40),
дата_рождения date,
FOREIGN KEY (идентификатор) REFERENCES Паспорт(идентификатор)
);

create table Квартира 
(
идентификатор int primary key,
полный_адрес varchar(60), 
владелец varchar(50),
владелец_идентификатор int,
FOREIGN KEY (владелец_идентификатор) REFERENCES Паспорт(идентификатор)
);

create table Домашние_животные 
(
идентификатор int primary key, 
кличка varchar(30), 
порода varchar(40), 
тип varchar(30), 
хозяин varchar(50),
хозяин_идентификатор int,
FOREIGN KEY (хозяин_идентификатор) REFERENCES Паспорт(идентификатор)
);

