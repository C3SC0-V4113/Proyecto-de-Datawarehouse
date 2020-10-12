create database ETL_Proyecto
go
use ETL_Proyecto
go
create table DIM_PAIS
(
	id_pais varchar(5) not null,
	pais_nombre varchar(30) not null,
	constraint pk_id_pais primary key(id_pais)
)
create table DIM_PRODUCTOS
(
	codigo_producto int not null,
	producto_nombre varchar(500),
	constraint pk_cod_prod primary key(codigo_producto)
)
create table DIM_FECHAS
(
	id_fecha varchar(5) not null,
	año int not null,
	constraint pk_fecha primary key(id_fecha)
)
create table H_VENTAS
(
	id_pais varchar(5) not null,
	codigo_producto int not null,
	id_fecha varchar(5) not null,
	valor varchar(20) not null,
	constraint pk_multillave primary key(id_pais,codigo_producto,id_fecha),
	constraint fk_from_country foreign key(id_pais) references DIM_PAIS(id_pais),
	constraint fk_from_prod foreign key(codigo_producto) references DIM_PRODUCTOS(codigo_producto),
	constraint fk_from_date foreign key(id_fecha) references DIM_FECHAS(id_fecha)
)
select*from DIM_PAIS
select*from DIM_PRODUCTOS
select*from DIM_FECHAS
select*from H_VENTAS
delete from DIM_PAIS
delete from DIM_FECHAS 
delete from DIM_PRODUCTOS
delete from H_VENTAS
