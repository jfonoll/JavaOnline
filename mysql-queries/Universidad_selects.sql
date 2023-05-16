/* 1.Retorna un llistat amb el primer cognom, segon cognom i el nom de tots els/les alumnes. 
El llistat haurà d'estar ordenat alfabèticament de menor a major pel primer cognom, segon cognom i nom.*/
SELECT apellido1, apellido2, nombre FROM universidad.persona WHERE tipo = 'alumno' ORDER BY apellido1 ASC, apellido2 ASC, nombre ASC;

/* 2.Esbrina el nom i els dos cognoms dels alumnes que no han donat d'alta el seu número de telèfon en la base de dades.*/
SELECT apellido1, apellido2, nombre FROM universidad.persona WHERE tipo = 'alumno' AND telefono IS NULL ORDER BY apellido1 ASC, apellido2 ASC, nombre ASC;

/* 3.Retorna el llistat dels alumnes que van néixer en 1999.*/
SELECT apellido1, apellido2, nombre FROM universidad.persona WHERE tipo = 'alumno' AND year(fecha_nacimiento) = 1999 ORDER BY apellido1 ASC, apellido2 ASC, nombre ASC;

/* 4.Retorna el llistat de professors/es que no han donat d'alta el seu número de telèfon en la base de dades i a més el seu NIF acaba en K.*/
SELECT apellido1, apellido2, nombre FROM universidad.persona WHERE tipo = 'profesor'  AND telefono IS NULL AND NIF like '%K' ORDER BY apellido1 ASC, apellido2 ASC, nombre ASC;

/* 5.Retorna el llistat de les assignatures que s'imparteixen en el primer quadrimestre, en el tercer curs del grau que té l'identificador 7.*/
SELECT nombre FROM universidad.asignatura WHERE cuatrimestre = 1 AND curso = 3 AND id_grado = 7;

/* 6.Retorna un llistat dels professors/es juntament amb el nom del departament al qual estan vinculats. 
El llistat ha de retornar quatre columnes, primer cognom, segon cognom, nom i nom del departament. 
El resultat estarà ordenat alfabèticament de menor a major pels cognoms i el nom.*/
SELECT 	A.apellido1, A.apellido2, A.nombre, B.nombre 'departamento' FROM universidad.persona as A, universidad.departamento as B, universidad.profesor as C WHERE 	A.id = C.id_profesor AND B.id = C.id_departamento ORDER BY A.apellido1 ASC, A.apellido2 ASC, A.nombre ASC;

/* 7.Retorna un llistat amb el nom de les assignatures, any d'inici i any de fi del curs escolar de l'alumne/a amb NIF 26902806M.*/
SELECT 	D.nombre, B.anyo_inicio, B.anyo_fin FROM universidad.persona as A, universidad.curso_escolar as B,  universidad.alumno_se_matricula_asignatura as C, universidad.asignatura as D WHERE 	A.tipo = 'alumno' AND A.NIF = '26902806M' AND A.id = C.id_alumno AND B.id = C.id_curso_escolar AND D.id = C.id_asignatura ORDER BY 1 ASC;

/* 8.Retorna un llistat amb el nom de tots els departaments que tenen professors/es 
que imparteixen alguna assignatura en el Grau en Enginyeria Informàtica (Pla 2015).*/
SELECT 	A.nombre, B.apellido1,E.nombre FROM universidad.departamento as A, universidad.persona as B, universidad.profesor as C, universidad.grado AS D, universidad.asignatura as E WHERE   A.id = C.id_departamento AND B.id = C.id_profesor AND D.id = E.id_grado AND B.id = E.id_profesor AND B.tipo = 'profesor' AND D.nombre = 'Grado en Ingeniería Informática (Plan 2015)' ORDER BY 3 ASC;
        
/* 9.Retorna un llistat amb tots els alumnes que s'han matriculat en alguna assignatura durant el curs escolar 2018/2019.*/
SELECT  DISTINCT A.apellido1, A.apellido2, A.nombre FROM universidad.persona as A, universidad.asignatura as B, universidad.alumno_se_matricula_asignatura as C, universidad.curso_escolar as D WHERE 	D.anyo_inicio = 2018 AND D.anyo_fin = 2019 AND A.id = C.id_alumno AND B.id = C.id_asignatura AND D.id = C.id_curso_escolar AND A.tipo = 'alumno' ORDER BY 1 ASC;
        


/*
Resol les 6 següents consultes utilitzant les clàusules LEFT JOIN i RIGHT JOIN.

1. Retorna un llistat amb els noms de tots els professors/es i els departaments que tenen vinculats. 
El llistat també ha de mostrar aquells professors/es que no tenen cap departament associat. 
El llistat ha de retornar quatre columnes, nom del departament, primer cognom, segon cognom i nom del professor/a. 
El resultat estarà ordenat alfabèticament de menor a major pel nom del departament, cognoms i el nom.
*/

SELECT 	C.nombre, A.apellido1, A.apellido2, A.nombre FROM universidad.persona as A LEFT OUTER JOIN universidad.profesor as B ON A.id = B.id_profesor LEFT OUTER JOIN universidad.departamento as C ON C.id = B.id_departamento WHERE 	A.tipo = 'profesor' ORDER BY C.nombre ASC, A.apellido1 ASC, A.apellido2 ASC, A.nombre ASC;

/* 2. Retorna un llistat amb els professors/es que no estan associats a un departament.*/
SELECT 	A.apellido1, A.apellido2, A.nombre FROM 	universidad.persona as A LEFT OUTER JOIN universidad.profesor as B ON A.id = B.id_profesor LEFT OUTER JOIN universidad.departamento as C ON C.id = B.id_departamento WHERE 	A.tipo = 'profesor' AND B.id_profesor IS NULL ORDER 	BY A.apellido1 ASC, A.apellido2 ASC, A.nombre ASC;

/* 3.Retorna un llistat amb els departaments que no tenen professors/es associats.*/
SELECT 	A.nombre, C.apellido1 FROM 	universidad.departamento as A LEFT OUTER JOIN universidad.profesor as B ON A.id = B.id_departamento LEFT OUTER JOIN universidad.persona as C ON C.id = B.id_profesor WHERE 	B.id_departamento IS NULL ORDER BY A.nombre ASC;

/* 4.Retorna un llistat amb els professors/es que no imparteixen cap assignatura.*/
SELECT 	A.apellido1, A.apellido2, A.nombre FROM universidad.persona as A LEFT OUTER JOIN universidad.asignatura as B ON A.id = B.id_profesor WHERE 	A.tipo = 'profesor' AND B.id_profesor IS NULL ORDER 	BY A.apellido1 ASC, A.apellido2 ASC, A.nombre ASC;

/* 5.Retorna un llistat amb les assignatures que no tenen un professor/a assignat.*/
SELECT 	DISTINCT A.nombre FROM 	universidad.asignatura as A WHERE A.id_profesor IS NULL ORDER BY A.nombre ASC;

/* 6.Retorna un llistat amb tots els departaments que no han impartit assignatures en cap curs escolar. */
SELECT 	DISTINCT A.nombre FROM universidad.departamento as A LEFT OUTER JOIN universidad.profesor as B ON A.id = B.id_departamento LEFT OUTER JOIN universidad.asignatura as C ON C.id_profesor = B.id_profesor WHERE 	C.id_profesor IS NULL ORDER BY A.nombre ASC;


/*CONSULTES RESUM*/

/* 1. Retorna el nombre total d'alumnes que hi ha.*/
SELECT 	count(*) FROM 	universidad.persona as A WHERE 	A.tipo = 'alumno';

/* 2.Calcula quants alumnes van néixer en 1999. */
SELECT 	count(*) FROM 	universidad.persona as A WHERE 	year(A.fecha_nacimiento) = 1999;

/* 3.Calcula quants professors/es hi ha en cada departament. 
El resultat només ha de mostrar dues columnes, una amb el nom del departament i una altra amb el nombre de professors/es que hi ha en aquest departament. 
El resultat només ha d'incloure els departaments que tenen professors/es associats i haurà d'estar ordenat de major a menor pel nombre de professors/es.*/
SELECT 	C.nombre , count(*) 'Nombre professors' FROM universidad.persona as A, universidad.profesor as B, universidad.departamento as C WHERE A.id = B.id_profesor AND B.id_departamento = C.id AND A.tipo = 'profesor' GROUP BY C.id ORDER BY 2 DESC;
        
/* 4.Retorna un llistat amb tots els departaments i el nombre de professors/es que hi ha en cadascun d'ells. 
Tingui en compte que poden existir departaments que no tenen professors/es associats. 
Aquests departaments també han d'aparèixer en el llistat.*/
SELECT 	A.nombre, C.apellido1, C.apellido2, C.Nombre FROM 	universidad.departamento as A LEFT OUTER JOIN universidad.profesor as B ON A.id = B.id_departamento LEFT OUTER JOIN universidad.persona as C ON C.id = B.id_profesor ORDER 	BY A.nombre ASC;

/* 5.Retorna un llistat amb el nom de tots els graus existents en la base de dades i el nombre d'assignatures que té cadascun. 
Tingues en compte que poden existir graus que no tenen assignatures associades. Aquests graus també han d'aparèixer en el llistat. 
El resultat haurà d'estar ordenat de major a menor pel nombre d'assignatures.*/
SELECT A.nombre, count(B.id_grado) 'Nombre asignatures' FROM universidad.grado as A LEFT OUTER JOIN universidad.asignatura as B ON A.id = B.id_grado GROUP BY A.id ORDER BY 2 DESC;

/* 6.Retorna un llistat amb el nom de tots els graus existents en la base de dades i el nombre d'assignatures que té cadascun,
 dels graus que tinguin més de 40 assignatures associades.*/
SELECT A.nombre, count(B.id_grado) 'Nombre asignatures' FROM universidad.grado as A LEFT OUTER JOIN universidad.asignatura as B ON A.id = B.id_grado GROUP BY A.id HAVING COUNT(*)>40 ORDER BY 2 DESC;

/* 7.Retorna un llistat que mostri el nom dels graus i la suma del nombre total de crèdits que hi ha per a cada tipus d'assignatura. 
El resultat ha de tenir tres columnes: nom del grau, tipus d'assignatura i la suma dels crèdits de totes les assignatures que hi ha d'aquest tipus.*/
SELECT A.nombre, B.tipo, sum(B.creditos) 'Nombre total de credits' FROM universidad.grado as A LEFT OUTER JOIN universidad.asignatura as B ON A.id = B.id_grado GROUP BY A.nombre, B.tipo ORDER BY 	A.nombre;

/* 8.Retorna un llistat que mostri quants alumnes s'han matriculat d'alguna assignatura en cadascun dels cursos escolars. 
El resultat haurà de mostrar dues columnes, una columna amb l'any d'inici del curs escolar i una altra amb el nombre d'alumnes matriculats.*/
SELECT	B.anyo_inicio, count(A.id) 'Alumnes matriculats  en alguna as de cursos escolars' FROM 	universidad.persona as A, universidad.curso_escolar as B, universidad.asignatura as C, universidad.alumno_se_matricula_asignatura as D WHERE A.id = D.id_alumno AND B.id = D.id_curso_escolar AND C.id = D.id_asignatura GROUP BY 1;
		
/* 9. Retorna un llistat amb el nombre d'assignatures que imparteix cada professor/a. 
El llistat ha de tenir en compte aquells professors/es que no imparteixen cap assignatura. 
El resultat mostrarà cinc columnes: id, nom, primer cognom, segon cognom i nombre d'assignatures. 
El resultat estarà ordenat de major a menor pel nombre d'assignatures.*/
SELECT A.id, A.nombre, A.apellido1, A.apellido2, count(B.id) 'Nombre asignatures' FROM universidad.persona as A LEFT OUTER JOIN universidad.asignatura as B ON A.id = B.id_profesor WHERE A.tipo = 'profesor' GROUP BY 	A.id, A.nombre, A.apellido1, A.apellido2 ORDER BY 5 DESC;

/* 10. Retorna totes les dades de l'alumne/a més jove.*/
SELECT A.* FROM	universidad.persona as A WHERE A.tipo = 'alumno' ORDER BY A.fecha_nacimiento DESC LIMIT 1;

/* 11.Retorna un llistat amb els professors/es que tenen un departament associat i que no imparteixen cap assignatura.*/
SELECT 	A.apellido1, A.apellido2, A.nombre FROM universidad.persona as A, universidad.profesor as B, universidad.departamento as C WHERE A.id = B.id_profesor AND B.id_departamento = C.id AND A.tipo = 'profesor' AND A.id NOT IN (SELECT id_profesor FROM universidad.asignatura WHERE id_profesor IS NOT NULL) ORDER BY 1 ASC;





	