/*
Resol les 6 següents consultes utilitzant les clàusules LEFT JOIN i RIGHT JOIN.

1. Retorna un llistat amb els noms de tots els professors/es i els departaments que tenen vinculats. 
El llistat també ha de mostrar aquells professors/es que no tenen cap departament associat. 
El llistat ha de retornar quatre columnes, nom del departament, primer cognom, segon cognom i nom del professor/a. 
El resultat estarà ordenat alfabèticament de menor a major pel nom del departament, cognoms i el nom.
*/

SELECT 	C.nombre, A.apellido1, A.apellido2, A.nombre
FROM 	universidad.persona as A
		LEFT OUTER JOIN universidad.profesor as B ON A.id = B.id_profesor
		LEFT OUTER JOIN universidad.departamento as C ON C.id = B.id_departamento
WHERE 	A.tipo = 'profesor'
ORDER 	BY C.nombre ASC, A.apellido1 ASC, A.apellido2 ASC, A.nombre ASC;


/* 2. Retorna un llistat amb els professors/es que no estan associats a un departament.*/
SELECT 	C.nombre, A.apellido1, A.apellido2, A.nombre
FROM 	universidad.persona as A
		LEFT OUTER JOIN universidad.profesor as B ON A.id = B.id_profesor
		LEFT OUTER JOIN universidad.departamento as C ON C.id = B.id_departamento
WHERE 	A.tipo = 'profesor' AND B.id_profesor IS NULL
ORDER 	BY C.nombre ASC, A.apellido1 ASC, A.apellido2 ASC, A.nombre ASC;


/* 3.Retorna un llistat amb els departaments que no tenen professors/es associats.*/
SELECT 	A.nombre, C.apellido1
FROM 	universidad.departamento as A
		LEFT OUTER JOIN universidad.profesor as B ON A.id = B.id_departamento
		LEFT OUTER JOIN universidad.persona as C ON C.id = B.id_profesor
WHERE 	B.id_departamento IS NULL
ORDER 	BY A.nombre ASC;

/* Retorna un llistat amb els professors/es que no imparteixen cap assignatura.*/

