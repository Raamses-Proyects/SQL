/*5. Obtén el máximo flete (Freight) de las órdenes*/

SELECT MAX([dbo].[Orders].Freight) FROM [dbo].[Orders]


/*Consulta para ayudar a confirmar resultado
SELECT [dbo].[Orders].Freight FROM [dbo].[Orders]
Order By Freight desc*/