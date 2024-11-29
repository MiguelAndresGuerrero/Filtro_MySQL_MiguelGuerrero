use filtro;

-- Encuentra el profesor que ha impartido más asignaturas en el último año académico.

select * from asignatura a 
join alumno_se_matricula_asignatura asma
join curso_escolar ce where anyo_fin = 2018 
and id_profesor is not null and asma.id_asignatura = 10 order by id_profesor desc;

-- Lista los cinco departamentos con mayor cantidad de asignaturas asignadas.

select * from departamento
join alumno_se_matricula_asignatura asma 
on asma.id_asignatura = departamento.id_departamento 
order by id_asignatura desc limit 10;

-- Obtén el total de alumnos y docentes por departamento.

select * from alumno_se_matricula_asignatura asma
join asignatura a on asma.id_asignatura = asma.id_asignatura
join alumno on asma.id_alumno;

-- Calcula el número total de alumnos matriculados en asignaturas de un género específico en un semestre determinado.


-- Encuentra los alumnos que han cursado todas las asignaturas de un grado específico.

select * from grado g
join asignatura on asignatura.id_grado
join alumno on alumno.id_alumno;

-- Lista los tres grados con mayor número de asignaturas cursadas en el último semestre.


-- Muestra los cinco profesores con menos asignaturas impartidas en el último año académico.
select * from profesor 
join asignatura where asignatura.id_profesor is  not null limit 5;

-- Calcula el promedio de edad de los alumnos al momento de su primera matrícula.


-- Encuentra los cinco profesores que han impartido más clases de un mismo grado.


-- Genera un informe con los alumnos que han cursado más de 10 asignaturas en el último año.


-- Calcula el promedio de créditos de las asignaturas por grado.


-- Lista las cinco asignaturas más largas (en horas) impartidas en el último semestre.


-- Muestra los alumnos que han cursado más asignaturas de un género específico.


-- Encuentra la cantidad total de horas cursadas por cada alumno en el último semestre.


-- Muestra el número de asignaturas impartidas diariamente en cada mes del último trimestre.


-- Calcula el total de asignaturas impartidas por cada profesor en el último semestre.


-- Encuentra al alumno con la matrícula más reciente.


-- Lista los cinco grados con mayor número de alumnos matriculados durante los últimos tres meses.


-- Obtén la cantidad de asignaturas cursadas por cada alumno en el último semestre.


-- Lista los profesores que no han impartido clases en el último año académico.
select * from asignatura 
join alumno_se_matricula_asignatura on id_curso_escolar
join curso_escolar order by anyo_fin desc;
