
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
