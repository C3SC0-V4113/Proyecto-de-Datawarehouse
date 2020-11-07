use master
go
create database SPA_ESCALON;
go
use SPA_ESCALON
go
create table Clientes
(
ID varchar(25) primary key not null,
Sexo varchar(15) not null,
Ingresos varchar(10) not null,
PromVisit varchar(10) not null,
Edad int not null,
Sauna varchar (25) not null,
Masaje varchar(25) not null,
Hidro varchar(25) not null,
Yoga varchar(25) not null
)

select * from Clientes

drop table Clientes