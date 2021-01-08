/*
5) Recuperar los títulos (Titles:title) y el índice del almacén (Stores:Store_id) de todos 
los libros que vendieron más de 25 unidades (Sales:qty).
*/

SELECT [dbo].[titles].title as 'Titulo', [dbo].[stores].stor_id as 'Indice Almacen'
FROM [dbo].[titles] INNER JOIN [dbo].[sales]
ON [dbo].[titles].title_id=[dbo].[sales].title_id
INNER JOIN [dbo].[stores] ON [dbo].[stores].stor_id=[dbo].[sales].stor_id
WHERE [dbo].[sales].qty>25 