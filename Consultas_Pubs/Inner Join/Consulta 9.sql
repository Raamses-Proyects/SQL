/*
7) Realizar una consulta que devuelva el titulo(Titles:Title), editorial(Publishers:Pub_name) 
y autor(Authors:au_lname) de cada libro. (Son 25 registros como resultado) 
*/

SELECT [dbo].[titles].title as 'Titulo', [dbo].[publishers].pub_name as 'Nombre Editorial', [dbo].[authors].au_lname as 'Nombre Autor'
FROM [dbo].[titles] INNER JOIN [dbo].[publishers]
ON [dbo].[publishers].pub_id=[dbo].[titles].pub_id
INNER JOIN [dbo].[titleauthor] ON [dbo].[titleauthor].title_id=[dbo].[titles].title_id
INNER JOIN [dbo].[authors] ON [dbo].[authors].au_id=[dbo].[titleauthor].au_id