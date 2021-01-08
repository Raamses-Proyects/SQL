/*1. Contar las ordenes que su fecha de pedido orderdate sea mayor a la fecha de pedido de la 
orden numero (orderid) con número 10250*/

SELECT COUNT([dbo].[Orders].OrderID) AS 'Numero de Ordenes' FROM [dbo].[Orders]
WHERE [dbo].[Orders].OrderDate > (SELECT [dbo].[Orders].OrderDate FROM [dbo].[Orders]
WHERE [dbo].[Orders].OrderID=10250)



