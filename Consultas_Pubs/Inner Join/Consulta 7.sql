/*
3) Seleccionar todos los titulos(Titles:Title), nombre y apellidos del autor (authors: au_lname,au_fname)
 de todos los libros de (“trad_cook”)cocina tradicional(Title: Type) . Inner join 
*/

USE pubs

SELECT [dbo].[titles].title as 'Titulo', [dbo].[authors].au_fname as 'Nombre', [dbo].[authors].au_lname as 'Apellido' 
FROM [dbo].[titles] INNER JOIN [dbo].[titleauthor]
ON [dbo].[titles].title_id=[dbo].[titleauthor].title_id
INNER JOIN [dbo].[authors] ON [dbo].[authors].au_id=[titleauthor].au_id
WHERE [dbo].[titles].type='trad_cook'
