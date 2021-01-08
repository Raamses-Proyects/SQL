/*
1) Realizar una consulta que muestre los nombres de los autores(authors:au_lname, au_fname) y 
editores(Publisher: pub_name) ubicados en la misma ciudad(city)
*/

USE pubs

SELECT [au_lname] as 'Apellido',[au_fname] as 'Nombre', [dbo].[publishers].pub_name as 'Nombre de Editor'
FROM [dbo].[titleauthor] INNER JOIN [dbo].[titles]
ON [dbo].[titleauthor].title_id=titles.title_id
INNER JOIN [dbo].[authors] ON [dbo].[authors].au_id=[dbo].[titleauthor].au_id
INNER JOIN [dbo].[publishers] ON [dbo].[publishers].pub_id=[dbo].[titles].pub_id
WHERE [dbo].[authors].city=[dbo].[publishers].city