/*
1.	Mostrar el id del empleado, el nombre y apellido de los empleados que atienden a los editores
 que viven en el  estado de CA o sea Nulo.
*/

USE pubs

SELECT emp_id, fname, lname, publishers.pub_id, state from employee INNER JOIN publishers
on employee.pub_id=publishers.pub_id
where state='CA' or state=null


