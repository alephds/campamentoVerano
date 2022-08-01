# ****  TODOS LOS CAMPOS USANDO (*)  EN EL SELECT **********

#SELECT * FROM entradas;

# ****  SELECCIONANDO CAMPOS ESPECIFICOS EN EL SELECT  **********

#SELECT id_marca,id_presentacion,id_proveedor,id_producto,precio,stock FROM entradas;

# ****  USO DEL WHERE EN EL SELECT  **********

#SELECT id_marca,id_presentacion,id_proveedor,id_producto,precio,stock FROM almacen.entradas
#WHERE id_marca = 1  AND  id_proveedor IN (1,4,3)  AND id_producto NOT IN (15,5,9)

# ****  USO DEL ALIAS AS********

#SELECT id_marca AS marca,precio AS precioNameNew,stock AS almacenado FROM entradas;


# ****  USO DEL INNER JOIN   **********

/*SELECT nb_marca,tipo_presentacion,nb_proveedor,nb_producto,precio,stock FROM entradas AS A
INNER JOIN almacen.marca AS B ON (A.id_marca=B.id_marca)
INNER JOIN almacen.presentacion AS C ON (A.id_presentacion=C.id_presentacion)
INNER JOIN almacen.proveedor AS D ON (A.id_proveedor=D.id_proveedor)
INNER JOIN almacen.productos AS E ON (A.id_producto=E.id_producto)*/

# =========  GROUP BY - ORDER BY - LIMIT EN MYSQL    ============

/*SELECT nb_marca,tipo_presentacion,nb_proveedor,nb_producto,precio,stock FROM entradas AS A
INNER JOIN almacen.marca AS B ON (A.id_marca=B.id_marca)
INNER JOIN almacen.presentacion AS C ON (A.id_presentacion=C.id_presentacion)
INNER JOIN almacen.proveedor AS D ON (A.id_proveedor=D.id_proveedor)
INNER JOIN almacen.productos AS E ON (A.id_producto=E.id_producto)
GROUP BY nb_marca,nb_producto
ORDER BY nb_marca DESC 
LIMIT 10*/

# ****  FUNCION MAX - MAXIMO **********

/*SELECT nb_producto,max(precio),max(stock) FROM entradas AS A
INNER JOIN almacen.marca AS B ON (A.id_marca=B.id_marca)
INNER JOIN almacen.presentacion AS C ON (A.id_presentacion=C.id_presentacion)
INNER JOIN almacen.proveedor AS D ON (A.id_proveedor=D.id_proveedor)
INNER JOIN almacen.productos AS E ON (A.id_producto=E.id_producto)
GROUP BY nb_marca,nb_producto
ORDER BY nb_marca DESC 
LIMIT 10*/

# ****  FUNCION MIN - MINIMO **********

/*SELECT nb_producto,MIN(precio),MIN(stock) FROM entradas AS A
INNER JOIN almacen.marca AS B ON (A.id_marca=B.id_marca)
INNER JOIN almacen.presentacion AS C ON (A.id_presentacion=C.id_presentacion)
INNER JOIN almacen.proveedor AS D ON (A.id_proveedor=D.id_proveedor)
INNER JOIN almacen.productos AS E ON (A.id_producto=E.id_producto)
GROUP BY nb_producto
ORDER BY nb_marca DESC 
LIMIT 10*/

# ****  FUNCION AVG - PROMEDIO   **********

/*SELECT nb_producto,AVG(precio),AVG(stock) FROM entradas AS A
INNER JOIN almacen.marca AS B ON (A.id_marca=B.id_marca)
INNER JOIN almacen.presentacion AS C ON (A.id_presentacion=C.id_presentacion)
INNER JOIN almacen.proveedor AS D ON (A.id_proveedor=D.id_proveedor)
INNER JOIN almacen.productos AS E ON (A.id_producto=E.id_producto)
GROUP BY nb_producto
ORDER BY nb_marca DESC 
LIMIT 10*/

# ****  FUNCION SUM - SUMA   **********

/*SELECT nb_producto,SUM(precio),SUM(stock) FROM entradas AS A
INNER JOIN almacen.marca AS B ON (A.id_marca=B.id_marca)
INNER JOIN almacen.presentacion AS C ON (A.id_presentacion=C.id_presentacion)
INNER JOIN almacen.proveedor AS D ON (A.id_proveedor=D.id_proveedor)
INNER JOIN almacen.productos AS E ON (A.id_producto=E.id_producto)
GROUP BY nb_producto*/


# ****  FUNCION ARITMETICA   **********

/*SELECT 
	nb_producto,
    precio * stock AS Multi, 
    precio + stock as Suma,
    precio / stock as Divsion,
    precio - stock as substraccion
FROM entradas AS A
INNER JOIN almacen.productos AS E ON (A.id_producto=E.id_producto)
GROUP BY nb_producto*/

# ****  FUNCION CONCAT Y GROUP_CONCAT   **********

/*SELECT 
	CONCAT(nb_producto,' - ',nb_proveedor) as concatBasico,
    GROUP_CONCAT(nb_producto,' - ',nb_proveedor) as groupContac,
	precio
FROM entradas AS A
INNER JOIN almacen.productos AS E ON (A.id_producto=E.id_producto)
INNER JOIN almacen.proveedor AS D ON (A.id_proveedor=D.id_proveedor)
GROUP BY nb_producto*/


# ****  Funcion coalesce    **********

/*SELECT 
	nb_producto,
     COALESCE(NULL,0,precio) AS ejemploCoalesce,
	COALESCE(precio,0) AS validandoConCoalesce
   
FROM entradas AS A
INNER JOIN almacen.productos AS E ON (A.id_producto=E.id_producto)
INNER JOIN almacen.proveedor AS D ON (A.id_proveedor=D.id_proveedor)
GROUP BY nb_producto*/




