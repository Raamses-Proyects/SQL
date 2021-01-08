/*
Consulta para sacar el promedio (AVG)con una SubCobsulta de la Tabla [dbo].[sales] usando su cantidad [qty] para el promedio
y mostrando su [stor_id]. 
Si se quieren ver los datos de [qty] que son mayores al Promedio y la columna de [stor_id] solo se lecciona toda la Consulta
Si se quiere ver el promedio de [qty] se ejecuta solo la SubConsulta seleccionandola
*/

SELECT [stor_id], [qty]
FROM [dbo].[sales]
WHERE [qty]>(SELECT AVG ([qty])  FROM sales)


