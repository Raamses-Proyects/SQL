/*5. Substraer la clave lada de teléfono de los autores (tabla:Publishers).*/

/*1. Opcion */
SELECT [dbo].[authors].[phone], LEFT([dbo].[authors].[phone], 3) AS 'Lada' FROM [dbo].[authors]

/*2. Opcion */
SELECT [dbo].[publishers].[pub_id], [authors].phone, LEFT([dbo].[authors].[phone], 3) AS 'LADA' 
FROM [dbo].[publishers] INNER JOIN [dbo].[titles]
ON [dbo].[publishers].pub_id=[dbo].[titles].pub_id
INNER JOIN [dbo].[titleauthor]
ON [dbo].[titleauthor].title_id=[dbo].[titles].title_id
INNER JOIN [dbo].[authors] 
ON [dbo].[authors].au_id=[dbo].[titleauthor].au_id