use master;
go
create database Spa_Diego;
go
use Spa_Diego

create table Clientes
(
	Id varchar(25) primary key not null,
	Sexo varchar(10) not null,
	Ingresos varchar(6) not null,
	PromVisit varchar(6) not null,
	Edad int not null,
	Sauna varchar(25) not null,
	Masaje varchar(25) not null,
	Hidro varchar(25) not null,
	Yoga varchar(25) not null
)

SELECT * FROM Clientes


SELECT*FROM Clientes
where Sauna='Tomaré el servicio' and Masaje='Tomaré el servicio' and Hidro='Tomaré el servicio' and Yoga='Tomaré el servicio'

SELECT*FROM Clientes
where PromVisit>=6.00
Order by PromVisit DESC

SELECT*FROM Clientes
where Ingresos>=1500.00
order by Ingresos DESC
