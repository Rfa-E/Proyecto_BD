-- Rank;Name;Total Net Worth;$ Last Change;$ YTD Change;Country;Industry;;;;
drop database if exists proyecto_raes;
create database proyecto_raes;
use proyecto_raes;
-- TAULA PRINCIPAL --------------------------------------------------------------------------------------------------------------------------------------
create table Dades_raes
(top int, nombre varchar(40), TotalNetWorth varchar(10), Lastchange varchar(10), YTDChange varchar(10),
country varchar(20), industry varchar(20), valor_null char null, primary key(top, nombre));
-- LOAD -------------------------------------------------------------------------------------------------------------------------------------------------
load data infile 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\500 richest people 2021.csv'
into table Dades_raes
fields terminated by ';'
optionally enclosed by '"'
lines terminated by '\r\n'
ignore 1 lines
(top,Nombre,TotalNetWorth,LastChange,YTDChange,Country,Industry, valor_null, valor_null, valor_null);
-- DROP VALOR NULL --------------------------------------------------------------------------------------------------------------------------------------
alter table Dades_raes drop column valor_null;