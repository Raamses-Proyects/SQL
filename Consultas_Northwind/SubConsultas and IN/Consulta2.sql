/*
2.	Seleccionar aquellos productos que su proveedor sea de la regi�n de �Qu�bec.
*/

SELECT  [ProductName] FROM [dbo].[Products]
WHERE [SupplierID] IN (SELECT [SupplierID] FROM [dbo].[Suppliers]
WHERE [Region]='Qu�bec')


