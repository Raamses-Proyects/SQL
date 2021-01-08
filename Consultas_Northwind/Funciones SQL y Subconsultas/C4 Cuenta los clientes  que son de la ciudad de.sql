/*4. Cuenta los clientes  que son de la ciudad de  Mexico D.F*/

SELECT COUNT([dbo].[Customers].[CustomerID]) AS 'Numero de Clientes', [dbo].[Customers].[City] FROM [dbo].[Customers]
Group By [dbo].[Customers].[City]
Having [dbo].[Customers].[City]='México D.F.'


/*Consulta para ayudar a confirmar resultado
SELECT [dbo].[Customers].City FROM [dbo].[Customers]
WHERE [dbo].[Customers].City='México D.F.'*/

/*Otras forma de hacer la consulta con SubConsulta*/
SELECT COUNT([dbo].[Customers].CustomerID)AS 'Cantidad de Clientes' FROM [dbo].[Customers]
WHERE [dbo].[Customers].City IN (SELECT [dbo].[Customers].City FROM [dbo].[Customers]
WHERE [dbo].[Customers].City='México D.F.')