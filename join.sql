
select * from HR.employees;
select * from HR.job_history;

select  *
from    HR.employees e
where   e.employee_id in (select b.employee_id from HR.job_history b);

select  *
from    HR.employees e
where   e.manager_id = '100'
and     e.employee_id in (
select  j.employee_id
from    HR.job_history j
);  

select  *
from    HR.employees e
where   e.employee_id in (
select  j.employee_id
from    HR.job_history j
where   j.department_id = '50'
);

select  *
from    HR.employees e
where   e.employee_id not in (
select  j.employee_id
from    HR.job_history j
where   j.department_id = '50'
);



