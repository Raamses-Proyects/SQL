/*
4.	Seleccionar aquellos clientes (customers) que tengan la misma ciudad (city) del cliente (companyname) 
�Pericles Comidas cl�sicas�.
*/

SELECT [CompanyName] FROM [dbo].[Customers] 
WHERE [City]=(SELECT [City] FROM [dbo].[Customers] 
WHERE [CompanyName]='Pericles Comidas cl�sicas')

