/*5. Obt�n el m�ximo flete (Freight) de las �rdenes*/

SELECT MAX([dbo].[Orders].Freight) FROM [dbo].[Orders]


/*Consulta para ayudar a confirmar resultado
SELECT [dbo].[Orders].Freight FROM [dbo].[Orders]
Order By Freight desc*/