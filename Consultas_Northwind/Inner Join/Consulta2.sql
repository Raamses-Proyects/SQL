/*
2.	Con inner join. Mostrar el nombre del proveedor (SUPPLIERS: Companyname), nombre del producto 
(PRODUCTS: ProductName) de aquellos productos que fueron vendidos en las ordenes comprendidas entre 10200 y 10300.
*/

SELECT [dbo].[Suppliers].CompanyName as 'Nombre de Proveedor', [dbo].[Products].ProductName as 'Nombre de Producto'
FROM [dbo].[Suppliers] INNER JOIN [dbo].[Products]
ON [dbo].[Suppliers].SupplierID=[dbo].[Products].SupplierID
INNER JOIN [dbo].[Order Details] ON [dbo].[Order Details].ProductID=[dbo].[Products].ProductID
WHERE [dbo].[Order Details].OrderID between 10200 and 10300