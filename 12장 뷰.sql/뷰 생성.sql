-- 뷰 생성하기
create view emp_view_dept60
as select employee_id, first_name, last_name,JOB_ID, salary
from employees
where department_id = 60;

desc emp_view_dept60;

select * from EMP_VIEW_DEPT60;

-- 뷰 생성 서브쿼리에서 별칭 사용
create view emp_dept60_salary
as select
    EMPLOYEE_ID as empno,
    FIRST_NAME || ' ' || last_name as name,
    salary as monthly_salary
from employees
where department_id = 60;

select * from emp_dept60_salary;