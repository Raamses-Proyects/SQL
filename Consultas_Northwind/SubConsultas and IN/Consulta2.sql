/*
2.	Seleccionar aquellos productos que su proveedor sea de la región de ‘Québec.
*/

SELECT  [ProductName] FROM [dbo].[Products]
WHERE [SupplierID] IN (SELECT [SupplierID] FROM [dbo].[Suppliers]
WHERE [Region]='Québec')


