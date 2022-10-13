-- Executed on https://sqliteonline.com/
--MS SQL

create table jobdetails(jobid int, jobname char(1),status varchar(10),statusupdatedat datetime);

insert into jobdetails(jobid,jobname,status,statusupdatedat)
values(1,'A','Started', '2022-01-01 01:00:00'),
	  (2,'B','Started',	'2022-01-01 02:10:00'),
      (3,'C','Started',	'2022-01-01 02:30:00'),
	(1,'A','Completed',	'2022-01-01 03:10:00'),    
    (2,'B','Completed',	'2022-01-01 03:50:00'),
    (3,'D','Started',	'2022-01-01 05:10:00');
    
select * from jobdetails;    
    	
select t1.jobid, t1.jobname, t2.statusupdatedat as completedat, t1.statusupdatedat as startedat , 
case when t2.statusupdatedat IS NULL then 'Running'
else 'Completed' end as currentstatus,
datediff(minute,t1.statusupdatedat, t2.statusupdatedat) as [processingtime(min)]
from jobdetails t1 Left join 
(select jobid, statusupdatedat 
     from jobdetails 
     where status='Completed') as t2
ON t1.jobid=t2.jobid     
where t1.status='Started';
