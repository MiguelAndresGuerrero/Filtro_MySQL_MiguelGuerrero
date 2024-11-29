create database Filtro;

use Filtro;

create table departamento (
	id_departamento int primary key,
    nombre varchar(50) not null
);

create table profesor (
	id_profesor int primary key,
    nif varchar(9),
    nombre varchar(25) not null,
    apellido1 varchar(50) not null,
    apellido2 varchar(50),
    ciudad varchar(25) not null,
    direccion varchar(50) not null,
    telefono varchar(9),
    fecha_nacimiento date not null,
    sexo enum('H', 'M') not null,
    id_departamento int,
    foreign key (id_departamento) references departamento(id_departamento) 
);

create table grado (
	id_grado int primary key,
    nombre varchar(100)
);

create table alumno (
	id_alumno int primary key,
    nif varchar(9),
    nombre varchar(25) not null,
    apellido1 varchar(50) not null,
    apellido2 varchar(50),
    ciudad varchar(25) not null,
    direccion varchar(50) not null,
    telefono varchar(9),
    fecha_nacimiento date,
    sexo enum('H', 'M')
);

create table curso_escolar (
	id_curso_escolar int primary key,
    anyo_inicio year(4),
    anyo_fin year(4)
);

create table asignatura (
	id_asignatura int primary key,
    nombre varchar(100) not null,
    creditos float not null,
    tipo varchar(80) not null,
    curso tinyint(3) not null,
    cuatrimestre tinyint(3),
    id_profesor int,
    id_grado int,
    foreign key (id_profesor) references profesor(id_profesor),
    foreign key (id_grado) references grado(id_grado)
);

create table alumno_se_matricula_asignatura (
	id_alumno int,
    id_asignatura int,
    id_curso_escolar int
);
