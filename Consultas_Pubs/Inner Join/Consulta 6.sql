/*
2) Obtener todos los nombres(Titles:Title) y editores (Publishers: pub_name) de todos 
los libros cuyos anticipos pagados son superiores a 7500
*/

SELECT [dbo].[titles].title, [dbo].[publishers].pub_name 
FROM titles INNER JOIN publishers
ON [dbo].[publishers].pub_id=[dbo].[titles].pub_id
WHERE [dbo].[titles].advance>7500