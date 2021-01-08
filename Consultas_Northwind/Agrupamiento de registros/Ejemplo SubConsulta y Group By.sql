/*Ejemplo SubConsulta y Group By*/
use pubs

SELECT [stor_id], [qty] FROM sales

SELECT MAX(qty), [stor_id] FROM sales
group by [stor_id]


SELECT [stor_id],[qty] FROM SALES
WHERE [qty]>22(SELECT AVG([qty]) FROM sales)


