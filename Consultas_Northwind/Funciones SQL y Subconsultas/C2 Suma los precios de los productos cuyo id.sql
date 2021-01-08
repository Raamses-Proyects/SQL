/*2. Suma los precios de los productos cuyo id del proveedor sea 3*/

SELECT SUM([dbo].[Products].[UnitPrice])AS 'Suma de los Productos' FROM [dbo].[Products]
WHERE [dbo].[Products].SupplierID IN (SELECT [dbo].[Products].SupplierID FROM [dbo].[Products] 
WHERE [dbo].[Products].SupplierID=3)
 
/*Consulta para ayudar a confirmar resultado
SELECT COUNT([dbo].[Products].SupplierID) FROM [dbo].[Products]
WHERE [SupplierID]=3*/
