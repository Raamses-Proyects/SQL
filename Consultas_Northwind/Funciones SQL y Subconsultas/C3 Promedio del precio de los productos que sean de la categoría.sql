/*3. Obtén el promedio del precio de los productos que sean de la categoría con el id igual a 3*/

SELECT AVG([dbo].[Products].UnitPrice) AS 'Promedio de los Productos' FROM [dbo].[Products]
WHERE [dbo].[Products].CategoryID IN (SELECT [dbo].[Products].CategoryID FROM [dbo].[Products]
WHERE [dbo].[Products].CategoryID=3)


/*Consulta para ayudar a confirmar resultado
SELECT SUM([dbo].[Products].UnitPrice),([dbo].[Products].CategoryID) FROM [dbo].[Products]
Group By [dbo].[Products].CategoryID, [dbo].[Products].UnitPrice
Having [dbo].[Products].CategoryID=3
Order By [dbo].[Products].UnitPrice desc*/
