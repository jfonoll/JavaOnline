/* 1.Retorna un llistat amb el primer cognom, segon cognom i el nom de tots els/les alumnes. 
El llistat haurà d'estar ordenat alfabèticament de menor a major pel primer cognom, segon cognom i nom.*/
SELECT apellido1, apellido2, nombre
FROM universidad.persona 
WHERE tipo = 'alumno' 
ORDER BY apellido1 ASC, apellido2 ASC, nombre ASC;

/* 2.Esbrina el nom i els dos cognoms dels alumnes que no han donat d'alta el seu número de telèfon en la base de dades.*/
SELECT apellido1, apellido2, nombre
FROM universidad.persona 
WHERE tipo = 'alumno' AND telefono IS NULL
ORDER BY apellido1 ASC, apellido2 ASC, nombre ASC;

/* 3.Retorna el llistat dels alumnes que van néixer en 1999.*/
SELECT apellido1, apellido2, nombre
FROM universidad.persona 
WHERE tipo = 'alumno' AND year(fecha_nacimiento) = 1999
ORDER BY apellido1 ASC, apellido2 ASC, nombre ASC;

/* 4.Retorna el llistat de professors/es que no han donat d'alta el seu número de telèfon en la base de dades i a més el seu NIF acaba en K.*/
SELECT apellido1, apellido2, nombre
FROM universidad.persona 
WHERE tipo = 'profesor'  AND telefono IS NULL
AND NIF like '%K'
ORDER BY apellido1 ASC, apellido2 ASC, nombre ASC;

/* 5.Retorna el llistat de les assignatures que s'imparteixen en el primer quadrimestre, en el tercer curs del grau que té l'identificador 7.*/
SELECT  nombre 
FROM 	asignatura
WHERE 	cuatrimestre = 1 AND curso = 3 AND id_grado = 7;

/* 6.Retorna un llistat dels professors/es juntament amb el nom del departament al qual estan vinculats. 
El llistat ha de retornar quatre columnes, primer cognom, segon cognom, nom i nom del departament. 
El resultat estarà ordenat alfabèticament de menor a major pels cognoms i el nom.*/
SELECT 	A.apellido1, A.apellido2, A.nombre, B.nombre 'departamento'
FROM	persona as A, departamento as B, profesor as C
WHERE 	A.id = C.id_profesor AND B.id = C.id_departamento
ORDER BY A.apellido1 ASC, A.apellido2 ASC, A.nombre ASC;

/* 7.Retorna un llistat amb el nom de les assignatures, any d'inici i any de fi del curs escolar de l'alumne/a amb NIF 26902806M.*/
SELECT 	D.nombre, B.anyo_inicio, B.anyo_fin
FROM 	universidad.persona as A, universidad.curso_escolar as B,  universidad.alumno_se_matricula_asignatura as C, universidad.asignatura as D
WHERE 	A.tipo = 'alumno' AND 
		A.NIF = '26902806M' AND 
		A.id = C.id_alumno AND 
        B.id = C.id_curso_escolar AND 
        D.id = C.id_asignatura
ORDER BY 1 ASC;

/* 8.Retorna un llistat amb el nom de tots els departaments que tenen professors/es 
que imparteixen alguna assignatura en el Grau en Enginyeria Informàtica (Pla 2015).*/
SELECT 	A.nombre, B.apellido1,E.nombre
FROM 	universidad.departamento as A,
		universidad.persona as B,
        universidad.profesor as C,
        universidad.grado AS D,
        universidad.asignatura as E
WHERE   A.id = C.id_departamento AND
		B.id = C.id_profesor AND	
        D.id = E.id_grado AND
        B.id = E.id_profesor AND
        B.tipo = 'profesor' AND 
        D.nombre = 'Grado en Ingeniería Informática (Plan 2015)'
 ORDER BY 3 ASC;
        
/* 9.Retorna un llistat amb tots els alumnes que s'han matriculat en alguna assignatura durant el curs escolar 2018/2019.*/
SELECT  DISTINCT A.apellido1, A.apellido2, A.nombre
FROM	universidad.persona as A,
		universidad.asignatura as B,
        universidad.alumno_se_matricula_asignatura as C,
        universidad.curso_escolar as D
WHERE 	D.anyo_inicio = 2018 AND 
		D.anyo_fin = 2019 AND
		A.id = C.id_alumno AND
        B.id = C.id_asignatura AND 
        D.id = C.id_curso_escolar AND 
        A.tipo = 'alumno'
ORDER BY 1 ASC;
        








	