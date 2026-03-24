-- NATURAL JOIN
select first_name, JOB_TITLE
from EMPLOYEES
Natural join jobs;

-- USING JOIN
select first_name, department_name
from EMPLOYEES
join DEPARTMENTS
using (department_id);

--ON JOIN
select department_name, l.STREET_ADDRESS, city, l.STATE_PROVINCE
from DEPARTMENTS d
join locations l
on d.LOCATION_ID = l.LOCATION_ID;

select e.first_name, d.department_name,
    l.STREET_ADDRESS || ', ' || l.city ||', '|| l.STATE_PROVINCE as address
from employees e
join departments d ON e.department_id = d.department_id
join locations l   ON d.LOCATION_ID = l.LOCATION_ID;

--OUTER JOIN
select e.employee_id, e.first_name, e.hire_date,
    j.START_DATE, j.END_DATE,j.JOB_ID,j.DEPARTMENT_ID
from employees e
left outer join job_history j
on  e.employee_id = j.employee_id
order by e.employee_id;