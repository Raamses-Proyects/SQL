/*
5) Recuperar los t�tulos (Titles:title) y el �ndice del almac�n (Stores:Store_id) de todos 
los libros que vendieron m�s de 25 unidades (Sales:qty).
*/

SELECT [dbo].[titles].title as 'Titulo', [dbo].[stores].stor_id as 'Indice Almacen'
FROM [dbo].[titles] INNER JOIN [dbo].[sales]
ON [dbo].[titles].title_id=[dbo].[sales].title_id
INNER JOIN [dbo].[stores] ON [dbo].[stores].stor_id=[dbo].[sales].stor_id
WHERE [dbo].[sales].qty>25 