/*Seleccionar todos las [BirthDate] de la tabla [dbo].[Employees] y dependiendo de si el mes es enero, febrero etc,
poner el signo zodiacal correspondiente*/

SELECT [BirthDate], 
CASE 
WHEN Datename(MONTH, [BirthDate])='Enero' THEN 'Acuario'
WHEN Datename(MONTH, [BirthDate])='Febrero' THEN 'Piscis'
WHEN Datename(MONTH, [BirthDate])='Marzo' THEN 'Aries'
WHEN Datename (MONTH, [BirthDate])='Abril' THEN 'Tauro'
WHEN Datename (MONTH, [BirthDate])='Mayo' THEN 'Géminis'
WHEN Datename (MONTH, [BirthDate])='Junio' THEN 'Cáncer'
WHEN Datename (MONTH, [BirthDate])='Julio' THEN 'Leo'
WHEN Datename (MONTH, [BirthDate])='Agosto' THEN 'Virgo'
WHEN Datename (MONTH, [BirthDate])='Septiembre' THEN 'Libra'
WHEN Datename (MONTH, [BirthDate])='Octubre' THEN 'Escorpio'
WHEN Datename (MONTH, [BirthDate])='Noviembre' THEN 'Sagitario'
WHEN Datename (MONTH, [BirthDate])='Diciembre' THEN 'Capricornio'
END AS SignoZodiacal
FROM [dbo].[Employees]
