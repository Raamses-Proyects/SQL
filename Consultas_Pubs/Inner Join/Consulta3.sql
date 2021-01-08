/*
3.	Mostrar el nombre de la tienda, su ciudad, el titulo de la publicación y la 
cantidad que se ha vendido donde su fecha de orden sea igual a 15/06/1992 o igual a 14/09/1994
*/
use pubs
select [stor_name] as 'Nombre de tienda',[city] as 'Ciudad',[title],[qty] as 'Cantidad'
from [dbo].[sales]
inner join [dbo].[titles] 
on [dbo].[sales].title_id = [dbo].[titles].title_id
inner join [dbo].[stores]
on [dbo].[stores].stor_id = [dbo].[sales].stor_id
where [ord_date] = '15/06/1992'
or [ord_date] = '14/09/1994'
 
