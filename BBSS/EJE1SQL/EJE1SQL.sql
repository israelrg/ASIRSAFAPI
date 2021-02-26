CREATE DATABASE IF NOT exists futbol character set utf8;

create table jugadores (
	id_jugador int(3) unsigned primary key,
    nombre varchar(50) not null,
    fecha_nac date NOT NULL,
    demarcacion varchar(50) not null,
    internacional int(3) not null,
    id_equipo int(2) unsigned not null
);



create table equipos (
	id_equipo int(2) unsigned not null,
	nombre varchar(50) not null, 
	estadio varchar(50), 
	aforo int(6), 
	ano_fundacion int(4),
    ciudad varchar(50)
); 

create table Partidos (
	id_equipo_casa int(2), 
	id_equipo_fuera int(2), 
	fecha date,
    goles_casa int(2), 
	goles_fuera int(2),
	observaciones varchar(200) 
); 

create table Goles (
	id_equipo_casa int(2), 
	id_equipo_fuera int(2), 
	minuto int(2), 
	descripcion varchar(200), 
	id_jugador int(3)
);
