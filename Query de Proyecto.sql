use master
--DROP DATABASE ProyectoDMD
CREATE DATABASE ProyectoDMD
GO
use ProyectoDMD
GO

--CREACIÓN DE TABLAS
CREATE TABLE DIM_PAISES
(
id_pais int not null,
nombre varchar(30)
constraint id_pais primary key(id_pais)
)
CREATE TABLE DIM_PRODUCTOS
(
id_arancelario int not null,
descripcion varchar(1000),
constraint id_arancelario primary key(id_arancelario)
)
CREATE TABLE DIM_FECHAS
(
id_año int not null,
año date
constraint id_año primary key(id_año)
)
CREATE TABLE FACTS_VENTAS
(
id_pais int not null,
id_arancelario int not null,
id_año int not null,
cif money
)

--LLAVES PRIMARIAS
ALTER TABLE FACTS_VENTAS
ADD CONSTRAINT pk_Llave_compuesta
PRIMARY KEY(id_arancelario,id_año,id_pais)
GO
--LLAVES SECUNDARIAS
ALTER TABLE FACTS_VENTAS
ADD CONSTRAINT fk_id_arancelario
FOREIGN KEY(id_arancelario)
REFERENCES DIM_PRODUCTOS(id_arancelario)

ALTER TABLE FACTS_VENTAS
ADD CONSTRAINT fk_id_año
FOREIGN KEY(id_año)
REFERENCES DIM_FECHAS(id_año)

ALTER TABLE FACTS_VENTAS
ADD CONSTRAINT fk_id_pais
FOREIGN KEY(id_pais)
REFERENCES DIM_PAISES(id_pais)

----
--INSERT INTO DIM_PAISES VALUES(1,'Canada')
----
--INSERT INTO DIM_FECHAS VALUES(1,'1/1/1994')
--INSERT INTO DIM_FECHAS VALUES(2,'1/1/1995')
--INSERT INTO DIM_FECHAS VALUES(3,'1/1/1996')
--INSERT INTO DIM_FECHAS VALUES(4,'1/1/1997')
----
--INSERT INTO DIM_PRODUCTOS VALUES(1,'asdad')
--INSERT INTO DIM_PRODUCTOS VALUES(2,'paprika')
--INSERT INTO DIM_PRODUCTOS VALUES(3,'perfect blue')
--INSERT INTO DIM_PRODUCTOS VALUES(4,'ghost in the shell')
----
--INSERT INTO FACTS_VENTAS VALUES(1,2,1,320.43)
--INSERT INTO FACTS_VENTAS VALUES(1,3,4,890.3)
--INSERT INTO FACTS_VENTAS VALUES(1,4,2,332.58)
--INSERT INTO FACTS_VENTAS VALUES(1,1,3,1002.45)

--select*from FACTS_VENTAS