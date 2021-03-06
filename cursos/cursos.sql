drop database cursos;
create database if not exists cursos character set utf8;
use cursos;


create table alumnos(
	nombre varchar(50),
    apellido1 varchar(50),
    apellido2 varchar(50),
    dni int(8),
    direccion varchar(50),
    sexo enum('M', 'F'),
    fechanac date
);
 alter table alumnos modify dni int(8) primary key;
 
 create table cursos(
	nombrecurso varchar(50),
    codigocurso int primary key,
    profesor varchar(50),
    maxalumnos int,
    fechaini date,
    fechafin date,
    nomhoras int
 );
 
 create table profesores (
	 nombre varchar(50), 
	 apellido1 varchar(50), 
	 apellido2 varchar(50), 
	 dni int(8) primary key,
	 direccion varchar(50),
	 titulo varchar(50), 
     sueldo int 
 );
 
 create table manuales(
	 referencia varchar(50), 
	 titulo varchar(50), 
	 autor varchar(50), 
	 fechaPub date, 
	 precio int
 );
 alter table manuales modify referencia varchar(50) primary key;
 
 create table oposiciones (
	 nombre varchar(50), 
	 codigo int primary key, 
	 fecExam date,
	 organismo varchar(50), 
	 plazas int, 
	 categoria varchar(50)
);


create table matriculas(
	dniAlumno int(8) primary key, 
	codCurso int, 
	pruebaA varchar(50), 
	pruebaB varchar(50), 
	tipo varchar(50), 
	inscripcion date
);

create table curso_oposicion(
	codCurso int,
    codOposicion int,
    primary key(codCurso, codOposicion)
);

create table curso_manual(
	codCurso int,
    referencia varchar(50),
    primary key(codCurso, referencia)
);

alter table oposiciones modify categoria enum('A','E');
alter table matriculas modify tipo enum('oficial', 'libre');