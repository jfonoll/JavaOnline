/* 1.Llista el nom de tots els productes que hi ha en la taula producto.*/
SELECT nombre FROM tienda.producto;

/* 2.Llista els noms i els preus de tots els productes de la taula producto.*/
SELECT nombre, precio FROM tienda.producto;

/* 3.Llista totes les columnes de la taula producto.*/
SELECT * FROM tienda.producto;

/* 4.Llista el nom dels productes, el preu en euros i el preu en dòlars estatunidencs (USD).*/
SELECT nombre, precio + " EUR", precio + (precio * 0.09) + " Dollars USD" FROM tienda.producto;

/* 5.Llista el nom dels productes, el preu en euros i el preu en dòlars estatunidencs (USD). Utilitza els següents àlies per a les columnes: nom de producto, euros, dòlars.*/
SELECT nombre as 'Nom de producto', precio + " EUR" as 'Euros' , precio + (precio * 0.09) + " Dollars USD" as 'Dòlars' FROM tienda.producto;

/* 6.Llista els noms i els preus de tots els productes de la taula producto, convertint els noms a majúscula.*/
SELECT upper(nombre), precio FROM tienda.producto;

/* 7.Llista els noms i els preus de tots els productes de la taula producto, convertint els noms a minúscula.*/
SELECT lower(nombre), precio FROM tienda.producto;

/* 8.Llista el nom de tots els fabricants en una columna, i en una altra columna obtingui en majúscules els dos primers caràcters del nom del fabricant.*/
SELECT nombre, upper(substring(nombre , 1, 2)) FROM tienda.fabricante;

/* 9.Llista els noms i els preus de tots els productes de la taula producto, arrodonint el valor del preu.*/
SELECT nombre, round(precio,1) FROM tienda.producto;

/* 10.Llista els noms i els preus de tots els productes de la taula producto, truncant el valor del preu per a mostrar-lo sense cap xifra decimal.*/
SELECT nombre, truncate(precio,0) FROM tienda.producto;

/* 11.Llista el codi dels fabricants que tenen productes en la taula producto.*/
SELECT B.nombre FROM tienda.producto as A, tienda.fabricante as B
WHERE  A.codigo_fabricante = B.codigo;

/* 12.Llista el codi dels fabricants que tenen productes en la taula producto, eliminant els codis que apareixen repetits.*/
SELECT DISTINCT B.nombre FROM tienda.producto as A, tienda.fabricante as B
WHERE  A.codigo_fabricante = B.codigo;

/*13. Llista els noms dels fabricants ordenats de manera ascendent.*/
SELECT nombre FROM tienda.fabricante 
ORDER BY 1 ASC;

/*14.Llista els noms dels fabricants ordenats de manera descendent.*/
SELECT nombre FROM tienda.fabricante 
ORDER BY 1 DESC;

/* 15. Llista els noms dels productes ordenats, en primer lloc, pel nom de manera ascendent i, en segon lloc, pel preu de manera descendent.*/
SELECT nombre , precio FROM tienda.producto
ORDER BY 1 ASC , 2 DESC;

/* 16. Retorna una llista amb les 5 primeres files de la taula fabricante.*/
SELECT nombre FROM tienda.fabricante LIMIT 5;

/* 17.Retorna una llista amb 2 files a partir de la quarta fila de la taula fabricante.
 La quarta fila també s'ha d'incloure en la resposta.*/
SELECT nombre FROM tienda.fabricante LIMIT 3,2;

/* 18.Llista el nom i el preu del producte més barat. (Utilitza solament les clàusules ORDER BY i LIMIT). 
NOTA: Aquí no podria usar MIN(preu), necessitaria GROUP BY.*/
SELECT nombre, precio FROM tienda.producto ORDER BY precio ASC LIMIT 1;

/* 19.Llista el nom i el preu del producte més car. (Utilitza solament les clàusules ORDER BY i LIMIT). 
NOTA: Aquí no podria usar MAX(preu), necessitaria GROUP BY.*/
SELECT nombre, precio FROM tienda.producto ORDER BY precio DESC LIMIT 1;

/* 20. lista el nom de tots els productes del fabricant el codi de fabricant del qual és igual a 2.*/
SELECT nombre FROM tienda.producto WHERE codigo_fabricante = 2;

/* 21.Retorna una llista amb el nom del producte, preu i nom de fabricant de tots els productes de la base de dades.*/
SELECT A.nombre, A.precio, B.nombre FROM tienda.producto as A, tienda.fabricante as B 
WHERE A.codigo_fabricante = B.codigo;

/* 22.Retorna una llista amb el nom del producte, preu i nom de fabricant de tots els productes de la base de dades. 
Ordena el resultat pel nom del fabricant, per ordre alfabètic.*/
SELECT A.nombre, A.precio, B.nombre FROM tienda.producto as A, tienda.fabricante as B 
WHERE A.codigo_fabricante = B.codigo
ORDER BY B.nombre ASC;

/* 23.Retorna una llista amb el codi del producte, nom del producte, codi del fabricador i nom del fabricador, de tots els productes de la base de dades.*/
SELECT A.codigo, A.nombre, B.codigo, B.nombre FROM tienda.producto as A, tienda.fabricante as B 
WHERE A.codigo_fabricante = B.codigo;

/* 24.Retorna el nom del producte, el seu preu i el nom del seu fabricant, del producte més barat.*/
SELECT A.nombre, A.precio, B.nombre FROM tienda.producto as A, tienda.fabricante as B
WHERE A.codigo_fabricante = B.codigo
ORDER BY A.precio ASC LIMIT 1;

/* 25.Retorna el nom del producte, el seu preu i el nom del seu fabricant, del producte més car.*/
SELECT A.nombre, A.precio, B.nombre FROM tienda.producto as A, tienda.fabricante as B
WHERE A.codigo_fabricante = B.codigo
ORDER BY A.precio DESC LIMIT 1;

/* 26.Retorna una llista de tots els productes del fabricant Lenovo.*/
SELECT A.nombre, A.precio FROM tienda.producto as A, tienda.fabricante as B
WHERE A.codigo_fabricante = B.codigo AND B.nombre = "Lenovo"
ORDER BY A.nombre;

/* 27.Retorna una llista de tots els productes del fabricant Crucial que tinguin un preu major que 200 €.*/
SELECT A.nombre, A.precio FROM tienda.producto as A, tienda.fabricante as B
WHERE A.codigo_fabricante = B.codigo AND B.nombre = "Crucial" AND A.precio > 200
ORDER BY A.nombre;

/* 28.Retorna un llistat amb tots els productes dels fabricants Asus, Hewlett-Packardy Seagate. Sense utilitzar l'operador IN.*/
SELECT A.nombre, A.precio FROM tienda.producto as A, tienda.fabricante as B
WHERE A.codigo_fabricante = B.codigo AND (B.nombre = "Asus" OR B.nombre = "Hewlett-Packard" OR B.nombre = "Seagate") 
ORDER BY A.nombre;

/* 29.Retorna un llistat amb tots els productes dels fabricants Asus, Hewlett-Packardy Seagate. Fent servir l'operador IN.*/
SELECT A.nombre, A.precio FROM tienda.producto as A, tienda.fabricante as B
WHERE A.codigo_fabricante = B.codigo AND B.nombre IN ("Asus" , "Hewlett-Packard" , "Seagate") 
ORDER BY A.nombre;

/* 30.Retorna un llistat amb el nom i el preu de tots els productes dels fabricants el nom dels quals acabi per la vocal e.*/
SELECT A.nombre, A.precio FROM tienda.producto as A, tienda.fabricante as B
WHERE A.codigo_fabricante = B.codigo AND B.nombre LIKE '%e'
ORDER BY A.nombre;

/* 31.Retorna un llistat amb el nom i el preu de tots els productes el nom de fabricant dels quals contingui el caràcter w en el seu nom.*/
SELECT A.nombre, A.precio FROM tienda.producto as A, tienda.fabricante as B
WHERE A.codigo_fabricante = B.codigo AND B.nombre LIKE '%w%'
ORDER BY A.nombre;

/* 32.Retorna un llistat amb el nom de producte, preu i nom de fabricant, de tots els productes que tinguin un preu major o igual a 180 . 
Ordena el resultat, en primer lloc, pel preu (en ordre descendent) i, en segon lloc, pel nom (en ordre ascendent).*/
SELECT A.nombre, A.precio, B.nombre FROM tienda.producto as A, tienda.fabricante as B
WHERE A.codigo_fabricante = B.codigo AND A.precio >= 180
ORDER BY A.preu DESC , A.nombre ASC;

/* 33.Retorna un llistat amb el codi i el nom de fabricant, solament d'aquells fabricants que tenen productes associats en la base de dades.*/
SELECT DISTINCT B.codigo, B.nombre 
FROM tienda.producto as A, tienda.fabricante as B
WHERE A.codigo_fabricante = B.codigo 
ORDER BY 1;

/* 33.Retorna un llistat amb el codi i el nom de fabricant, solament d'aquells fabricants que tenen productes associats en la base de dades.*/
SELECT DISTINCT B.codigo, B.nombre 
FROM tienda.producto as A, tienda.fabricante as B
WHERE A.codigo_fabricante = B.codigo 
ORDER BY 1;

/* 34.Retorna un llistat de tots els fabricants que existeixen en la base de dades, juntament amb els productes que té cadascun d'ells
El llistat haurà de mostrar també aquells fabricants que no tenen productes associats.*/
SELECT A.codigo, A.nombre , B.nombre
FROM tienda.fabricante as A
LEFT OUTER JOIN tienda.producto as B ON A.codigo = B.codigo_fabricante
ORDER BY A.codigo ASC;

/*  35.Retorna un llistat on només apareguin aquells fabricants que no tenen cap producte associat.*/
SELECT A.codigo	, A.nombre , B.nombre
FROM tienda.fabricante as A
LEFT OUTER JOIN tienda.producto as B ON B.codigo_fabricante = A.codigo
WHERE B.nombre IS NULL
ORDER BY A.codigo ASC;

/* 36.Retorna tots els productes del fabricador Lenovo. (Sense utilitzar INNER JOIN).*/
SELECT A.nombre
FROM tienda.producto as A
WHERE A.codigo_fabricante = (SELECT codigo FROM tienda.fabricante WHERE nombre = 'Lenovo')
ORDER BY A.nombre ASC;

/* 37.Retorna totes les dades dels productes que tenen el mateix preu que el producte més car del fabricant Lenovo. (Sense usar INNER JOIN)*/
SELECT B.nombre, B.precio
FROM tienda.producto as B 
WHERE B.precio = (SELECT precio FROM tienda.producto WHERE codigo_fabricante = (SELECT codigo FROM fabricante WHERE nombre = 'Lenovo') ORDER BY 1 DESC LIMIT 1);

/* 38.Llista el nom del producte més car del fabricant Lenovo.*/
SELECT A.nombre
FROM tienda.producto A,
(SELECT A.codigo as codigo, A.precio as precio
					FROM tienda.producto as A, tienda.fabricante as B
					WHERE A.codigo_fabricante = B.codigo AND B.nombre = 'Lenovo'
					ORDER BY A.precio DESC LIMIT 1) as T1
WHERE A.codigo = T1.codigo;

/* 39.Llista el nom del producte més barat del fabricant Hewlett-Packard.*/
SELECT A.nombre
FROM tienda.producto A,
(SELECT A.codigo as codigo, A.precio as precio
					FROM tienda.producto as A, tienda.fabricante as B
					WHERE A.codigo_fabricante = B.codigo AND B.nombre = 'Hewlett-Packard'
					ORDER BY A.precio ASC LIMIT 1) as T1
WHERE A.codigo = T1.codigo;

/* 40.Retorna tots els productes de la base de dades que tenen un preu major o igual al producte més car del fabricant Lenovo.*/
SELECT B.nombre, B.precio
FROM tienda.producto as B 
WHERE B.precio >= (SELECT precio FROM tienda.producto WHERE codigo_fabricante = (SELECT codigo FROM fabricante WHERE nombre = 'Lenovo') ORDER BY 1 DESC LIMIT 1);

/* 41.Llesta tots els productes del fabricant Asus que tenen un preu superior al preu mitjà de tots els seus productes.*/
SELECT A.nombre, A.precio
FROM tienda.producto as A, tienda.fabricante as B
WHERE (A.precio >= (SELECT avg(precio) FROM tienda.producto WHERE codigo_fabricante = (SELECT codigo FROM fabricante WHERE nombre = 'Asus')))
	AND A.codigo_fabricante= B.codigo
	AND B.nombre = 'asus' ;