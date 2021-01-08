/*
4.	Con inner join. Mostrar el nombre del producto (PRODUCTS), el nombre de la categoría (CATEGORIES) 
de aquellos productos que su stock (UnitsInStock) anda por debajo de las 10 unidades, ordenados por nombre de categoría. 
*/

SELECT [dbo].[Products].ProductName as 'Nombre de Producto', [dbo].[Categories].CategoryName as 'Categoria'
FROM [dbo].[Products] INNER JOIN [dbo].[Categories]
ON  [dbo].[Categories].CategoryID=[dbo].[Products].CategoryID
WHERE [dbo].[Products].UnitsInStock<10 
order by [dbo].[Categories].CategoryName asc
