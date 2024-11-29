# Filtro_MySQL 2

## Descripción del Proyecto

Este proyecto tiene como objetivo el diseño e implementación de un **sistema de base de datos (DDBB)** para la implementacion de un sistema universitario, con el fin de mejorar la eficiencia y sostenibilidad de los procesos operativos.
Actualmente enfrenta dificultades en la gestión de sus operaciones, lo que afecta la toma de decisiones. El sistema propuesto facilitará la consulta eficiente de la información relevante.

---

## Requisitos del Sistema

- **MySQL Installer** versión 8.0.40
- **MySQL Workbench** (para la gestión visual de la base de datos)

---

## Instalación y Configuración

1. **Crear la base de datos**  
   Ejecuta el archivo `ddl.sql` para crear la estructura de la base de datos.

2. **Cargar datos iniciales**  
   Ejecuta el archivo `dml.sql` para insertar los datos iniciales en las tablas.

3. **Ejecutar consultas**  
   Utiliza los archivos `dql_select.sql`, `dql_procedimientos.sql`, `dql_funciones.sql`, `dql_triggers.sql` para ejecutar los procedimientos, funciones y triggers que se han creado.

---

## Estructura de la Base de Datos

La base de datos está organizada en las siguientes tablas clave:

### 1. **departamento**
   - Almacena información de los departamentos (nombre).

### 2. **Profesor**
   - Contiene datos de los profesores que se encuentran trabajando en la universidad (nif ,nombre, apellido1, apellido2, ciudad, direccion, teléfono, fecha_nacimiento, sexo).

### 3. **Grado**
   - Registra los Grados de los alumnos que se inscribieron (nombre).

### 4. **Alumno**
   - Almacena datos de los alumnos inscritos en la universidad (nif ,nombre, apellido1, apellido2, ciudad, direccion, teléfono, fecha_nacimiento, sexo).

### 5. **curso_escolar**
   - Contiene información sobre el tiempo que lleva ejerciendo en ese curso (anyo_inicio, anyo_fin).

### 6. **asignatura**
   - Registra las asignaturas de los alumnos (nombre, creditos, tipo, curso, cuatrimestre ).

### 7. **alumno_se_matricula_asignatura**
   - Desglosa los alumnos que se matricularicularon en alguna asignatura en específico (id_alumno, id_asignatura, id_curso_escolar).

---

## Ejemplos de Consultas

```sql
-- Encuentra el profesor que ha impartido más asignaturas en el último año académico.

select * from asignatura a 
join alumno_se_matricula_asignatura asma
join curso_escolar ce where anyo_fin = 2018 
and id_profesor is not null and asma.id_asignatura = 10 order by id_profesor desc;

-- Lista los cinco departamentos con mayor cantidad de asignaturas asignadas.

-- Obtén el total de alumnos y docentes por departamento.

select * from alumno_se_matricula_asignatura asma
join asignatura a on asma.id_asignatura = asma.id_asignatura
join alumno on asma.id_alumno;

```
## Otras consultas que se encuentra en los documentos son

Además de las consultas anteriores, se han incluido las siguientes funcionalidades:

- Subconsultas

- Procedimientos
- Funciones
- Triggers

## Creador

- [Miguel Andres Guerrero Martinez](https://github.com/MiguelAndresGuerrero)

## Contacto

Para cualquier consulta sobre el proyecto, por favor contacta a:

Correo: guerreromiguelmartinez@gmail.com

sql
tu-repositorio

    ├── ddl.sql                     # Creación de las tablas y la base de datos
    ├── dml.sql                     # Inserción de datos iniciales
    ├── consultas
    │   ├── dql_select.sql          # Consultas select
    │   ├── dql_procedimientos.sql  # Procedimientos almacenados
    │   ├── dql_funciones.sql       # Funciones
    │   ├── dql_triggers.sql        # Triggers
    ├── README.md                   # Este archivo
