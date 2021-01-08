/*
4) Seleccione el id del almacén (stores:stor_id), tipo  de descuento(discounts:discounttype) 
incluyendo los descuentos que no estén asignados a un almacén.  Right join
*/

SELECT [dbo].[stores].stor_id as 'Id Almacen', [dbo].[discounts].discounttype as 'Tipo de Descuento'
FROM [dbo].[stores] RIGHT JOIN [dbo].[discounts] 
ON [dbo].[stores].stor_id=[dbo].[discounts].stor_id