create database if not exists futboldos;

USE futboldos;

create table jugadores (
	id_jugador int(3) unsigned primary key,
    nombre varchar(50) not null,
    fecha_nac date NOT NULL,
    demarcacion varchar(50) not null,
    internacional int(3) not null,
    id_equipo int(2) unsigned
);



create table equipos (
	id_equipo int(2) unsigned primary key,
	nombre varchar(50) not null, 
	estadio varchar(50), 
	aforo int(6), 
	ano_fundacion int(4),
    ciudad varchar(50)
); 

create table partidos (
	id_equipo_casa int(2), 
	id_equipo_fuera int(2), 
	fecha date,
    goles_casa int(2), 
	goles_fuera int(2),
	observaciones varchar(200) 
); 

create table goles (
	id_equipo_casa int(2), 
	id_equipo_fuera int(2), 
	minuto int(2), 
	descripcion varchar(200), 
	id_jugador int(3)
);

alter table partidos add comienzo date after observaciones;
alter table equipos change ano_fundacion fundacion varchar(50);
alter table equipos add anagrama varchar(50) after ciudad;

ALTER TABLE `futboldos`.`jugadores` 
ADD INDEX `fk_id_equipo_idx` (`id_equipo` ASC) VISIBLE;
;
ALTER TABLE `futboldos`.`jugadores` 
ADD CONSTRAINT `fk_id_equipo`
  FOREIGN KEY (`id_equipo`)
  REFERENCES `futboldos`.`equipos` (`id_equipo`);
  
use futboldos;
insert into equipos(id_equipo, nombre, estadio, aforo, fundacion, ciudad, anagrama) values(1,'Barcelona','bernabeu',50000,1900,'Barcelona','BCN');
insert into equipos(id_equipo, nombre, estadio, aforo, fundacion, ciudad, anagrama) values(2,'caudal','santamarina',10000,1400,'Mieres','CDL');
insert into equipos(id_equipo, nombre, estadio, aforo, fundacion, ciudad, anagrama) values(3,'Morcin','Morcin',2000,1900,'Morcin','MCR');

alter table jugadores change internacional internacional varchar(200);

insert into jugadores(id_jugador, nombre, id_equipo) values(1,'Saul',1);
insert into jugadores(id_jugador, nombre, id_equipo) values(2,'Alex',1);
insert into jugadores(id_jugador, nombre, id_equipo) values(3,'Pablo',1);
insert into jugadores(id_jugador, nombre, id_equipo) values(4,'Lopez',2);
insert into jugadores(id_jugador, nombre, id_equipo) values(5,'Rodrigo',2);
insert into jugadores(id_jugador, nombre, id_equipo) values(6,'Matias',2);
insert into jugadores(id_jugador, nombre, id_equipo) values(7,'ivan',3);
insert into jugadores(id_jugador, nombre, id_equipo) values(8,'Silva',3);
insert into jugadores(id_jugador, nombre, id_equipo) values(9,'Perez',3);

  

