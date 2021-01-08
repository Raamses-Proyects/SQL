/*
5.	Eliminar de la tabla SALES aquellos registros donde su TITLE_ID sea igual PS2091
*/

USE pubs

DELETE sales
WHERE title_id = 'PS2091'

/*
6.	Eliminar de la tabla JOBS el registro que tenga el JOB_ID igual a 9(en esta practica no pude eliminar el 9 
porque esta relacionado a otro campo en la tabla employee y para borrarlo tengo que eliminarlo primero de allí) 
*/

delete jobs
where job_id=16


/*
7.	Eliminar de la tabla AUTHORS  aquellos autores que sean del STATE igual a  KS o su 
    campo CONTRACT sea igual a 0
*/

USE pubs

DELETE authors
WHERE state ='KS' OR contract=0