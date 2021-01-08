/*2. Obtener todos aquellos productos cuyo unitprice sea mayor al precio promedio de todos los productos.*/

SELECT [dbo].[Order Details].ProductID, [dbo].[Order Details].UnitPrice FROM [dbo].[Order Details]
WHERE [dbo].[Order Details].UnitPrice >(SELECT AVG([dbo].[Order Details].[UnitPrice]) FROM [dbo].[Order Details])


/*Consulta para ver el promedio y confirmar resultado
SELECT AVG([dbo].[Order Details].[UnitPrice]) FROM [dbo].[Order Details]*/


/*Esta es la consulta que debi haber echo*/
SELECT [ProductID], [ProductName], [UnitPrice] FROM [dbo].[Products] 
WHERE [UnitPrice] > (SELECT AVG([UnitPrice]) FROM [dbo].[Products])