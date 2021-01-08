/*
4.	Insertar en la tabla JOBS un registro completo con los siguientes datos: job_id sea igual a 99 job-desc sea
 igual mcgraw hill, min_lvl sea igual a 20 y max_lvl sea igual a 100.
*/
USE pubs

--set identity_insert dbo.jobs on 
insert dbo.jobs (job_id, job_desc, min_lvl, max_lvl)
values(99, 'Mcgraw hill',20,100)
go

