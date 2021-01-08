/*
1.	Con inner join.  Mostrar los campos ProductID, ProductName, UnitStock, Unitprice (PRODUCTS) 
de todos los productos vendidos (ORDER DETAILS) en una cantidad (Quantity) mayor e igual a 100.
*/

SELECT [dbo].[Products].ProductID as 'ID Producto ', [ProductName] as 'Nombre de Producto',
[UnitsInStock] as 'Valores Unitarios', [dbo].[Products].[UnitPrice] as 'Precio Unitario'
FROM [dbo].[Products] INNER JOIN [dbo].[Order Details] 
ON [dbo].[Products].ProductID=[dbo].[Order Details].ProductID
WHERE [dbo].[Order Details].Quantity>=100