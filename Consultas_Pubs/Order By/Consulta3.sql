/*
3.	Seleccionar de la tabla PUBLISHERS todos los registros  que su campo STATE sea nulo, ordenarlos por COUNTRY y
 dentro de este por nombre (PUB_NAME).
*/
USE pubs 

SELECT * from publishers
WHERE state is null 
order by country, pub_name