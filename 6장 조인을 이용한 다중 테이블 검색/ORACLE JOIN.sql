--CARTESIAN PRODUCT
select FIRST_name, department_name
from EMPLOYEES, departments;

-- EQUI JOIN
SELECT e.first_name, e.DEPARTMENT_ID, d.department_name
from EMPLOYEES e, departments d
WHERE e.DEPARTMENT_ID = d.DEPARTMENT_ID;

-- SELF JOIN
select e.FIRST_NAME as employye_name, m.FIRST_NAME as manager_name
from EMPLOYEES e, EMPLOYEES m
where e.MANAGER_ID=m.employee_id and e.employee_id = 103;

-- NON-EQUI JOIN
select e.FIRST_NAME, e.SALARY, j.JOB_TITLE
from EMPLOYEES e, jobs j
where e.salary
between j.min_salary and j.max_salary
order by e.first_name;

-- OUTER JOIN
select e.employee_id, e.first_name, e.hire_date,
    j.start_date, j.end_date, j.job_id, j.DEPARTMENT_ID
from EMPLOYEES e, job_history j
where e.EMPLOYEE_ID = j.EMPLOYEE_ID(+)
order by j.EMPLOYEE_ID;