/*
4.	Seleccionar aquellos clientes (customers) que tengan la misma ciudad (city) del cliente (companyname) 
‘Pericles Comidas clásicas’.
*/

SELECT [CompanyName] FROM [dbo].[Customers] 
WHERE [City]=(SELECT [City] FROM [dbo].[Customers] 
WHERE [CompanyName]='Pericles Comidas clásicas')

