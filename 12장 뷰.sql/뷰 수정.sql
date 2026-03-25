-- 뷰 수정
create or replace view emp_dept60_salary
as select
    EMPLOYEE_ID as empno,
    FIRST_NAME || ' ' || last_name as name,
    job_id as job,
    salary 
from employees
where department_id = 60;

select * from emp_dept60_salary;