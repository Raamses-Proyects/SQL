/* 1. Desplegar el id  del título, el nombre del título, las cantidades vendidas y el nombre de las tiendas ubicadas 
en California (CA). Los nombres de los campos deben aparecer en español en su vista, así mismo se le pide  usar alias 
para las tablas. */

SELECT [dbo].[titles].title_id as 'Id Titulo', [dbo].[titles].title as 'Titulo', [dbo].[sales].qty as 'Cantidad', 
[dbo].[stores].stor_name as 'Nombre de Tienda', [dbo].[stores].state as 'Estado'
FROM [dbo].[titles] INNER JOIN [dbo].[sales]
ON [dbo].[titles].title_id=[dbo].[sales].title_id
INNER JOIN [dbo].[stores]
ON [dbo].[stores].stor_id=[dbo].[sales].stor_id
WHERE [dbo].[stores].state='CA'
