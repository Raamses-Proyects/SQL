/*
2.	Seleccionar los campos STOR_NAME y STOR_ADDRESS   de la tabla STORES cuyos registros sean del estado de CA y 
su ciudad de Tustin ordenados de manera descendente por STOR_NAME.
*/
USE pubs 

SELECT stor_name, stor_address, state,city FROM stores
WHERE state ='CA' AND  city ='Tustin'
order by stor_name










