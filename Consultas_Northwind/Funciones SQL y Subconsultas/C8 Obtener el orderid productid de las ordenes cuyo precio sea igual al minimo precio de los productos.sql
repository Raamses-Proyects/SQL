/*3. Obtener el orderid, productid de las ordenes (tabla: Order Details) cuyo precio sea igual 
al mínimo precio de los productos.*/

SELECT [OrderID], [ProductID], [UnitPrice] FROM [dbo].[Order Details]
WHERE [UnitPrice] =(SELECT MIN([UnitPrice]) FROM [dbo].[Order Details])

/*Consulta para ver el precio Minimo y confirmar la consulta
SELECT MIN([UnitPrice]) FROM [dbo].[Order Details]*/