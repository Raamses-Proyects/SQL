/*
4) Seleccione el id del almac�n (stores:stor_id), tipo  de descuento(discounts:discounttype) 
incluyendo los descuentos que no est�n asignados a un almac�n.  Right join
*/

SELECT [dbo].[stores].stor_id as 'Id Almacen', [dbo].[discounts].discounttype as 'Tipo de Descuento'
FROM [dbo].[stores] RIGHT JOIN [dbo].[discounts] 
ON [dbo].[stores].stor_id=[dbo].[discounts].stor_id