/* 4.Mostrar la cantidad de órdenes que se realizaron por fecha (orderdate, tabla:Orders) ordenado del mayor al menor. */

SELECT COUNT([dbo].[Order Details].Quantity) AS 'Cantidad de Ordenes', [dbo].[Orders].OrderDate
FROM [dbo].[Order Details] INNER JOIN [dbo].[Orders]
ON [dbo].[Order Details].OrderID=[dbo].[Orders].OrderID
GROUP BY [dbo].[Orders].OrderDate
ORDER BY [dbo].[Orders].OrderDate DESC


/*Esta es la forma correcta de hacer el Problema*/
Select COUNT([OrderDate]) AS 'Cantidad de Ordenes', [OrderDate] AS 'Fecha de Orden'
from [dbo].[Orders]
GROUP BY [dbo].[Orders].OrderDate
Order by COUNT(OrderDate) desc