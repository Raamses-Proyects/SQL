/*CONOCER EL NUMERO DE CLIENTES QUE HAY POR PAIS EN LA TABLA CUSTOMERS*/
SELECT COUNT([dbo].[Customers].CustomerID) AS 'Numero de Clientes por pais', [dbo].[Customers].[Country] 
FROM [dbo].[Customers]
Group By [dbo].[Customers].[Country]
Having COUNT([dbo].[Customers].CustomerID)>5
Order By COUNT([dbo].[Customers].CustomerID) desc, [dbo].[Customers].[Country] desc

/*Otra opcion*/
SELECT COUNT([CustomerID]),[Country] FROM [dbo].[Customers] 
GROUP BY [Country]
ORDER BY COUNT([CustomerID])DESC