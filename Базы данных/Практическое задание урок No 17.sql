drop database if exists beauty_salon;
create database if not exists beauty_salon;
use beauty_salon;

create table if not exists clients
(
id int primary key auto_increment,
first_name varchar(50) not null,
second_name varchar(50) not null,
birthday date not null,
email varchar(50) not null,
phone varchar(30),
number_of_visits int not null
);

create table if not exists masters 
(
id int primary key auto_increment,
first_name varchar(50) not null,
second_name varchar(50) not null,
phone varchar(30) not null,
number_of_services int not null
);

create table if not exists favorite_masters
(
id_client int,
id_master int,
primary key(id_client, id_master)
);

create table if not exists reviews
(
id int primary key auto_increment,
date_of_visit date not null,
comm varchar(500),
job_evaluation int check(job_evaluation>= 0 and job_evaluation<= 10)
);

create table if not exists sessions
(
id int primary key auto_increment,
date_of_session date not null,
session_cost int unsigned
);

create table if not exists salons 
(
id int primary key auto_increment,
address varchar(70) not null,
Number_of_masters int not null,
working_hours varchar(40) not null
);

create table if not exists regular_clients
(
id_client int,
id_salon int,
primary key(id_client, id_salon)
);

create table if not exists services
(
id int primary key auto_increment,
title varchar(40) not null,
cost_title int unsigned not null
);

create table if not exists master_service
(
id_master int,
id_service int,
primary key(id_master, id_service)
);

create table if not exists salon_admin
(
id int primary key auto_increment,
first_name varchar(50) not null,
second_name varchar(50) not null,
phone varchar(30) not null
);

alter table masters
add id_salon int;
alter table masters
add foreign key (id_salon) references salons(id);

alter table sessions
add id_client int;
alter table sessions
add foreign key (id_client) references clients(id);

alter table sessions 
add id_master int;
alter table sessions
add foreign key (id_master) references masters(id);

alter table reviews
add id_client int;
alter table reviews
add foreign key (id_client) references clients(id);

alter table reviews
add id_salon int;
alter table reviews
add foreign key (id_salon) references salons(id);

alter table salon_admin
add id_salon int;
alter table salon_admin
add foreign key (id_salon) references salons(id);


alter table favorite_masters
add foreign key (id_client) references clients(id);
alter table favorite_masters
add foreign key (id_master) references masters(id);

alter table regular_clients
add foreign key (id_client) references clients(id);
alter table regular_clients
add foreign key (id_salon) references salons(id);

alter table master_service
add foreign key (id_master) references masters(id);
alter table master_service
add foreign key (id_service) references services(id);


