/*
1.	Seleccionar aquellos registros de la tabla SALES que su ORD_DATE sea mayor a 15 de junio de 1992 y menor 
que el 14 de sep de 1994 ordenados por ORD_DATE y STOR_ID.
*/

USE pubs

SELECT  * FROM sales 
WHERE ord_date between'19920615' and  '19940914'
order by ord_date, stor_id