-- 단일행 서브쿼리
select FIRST_name, job_id, hire_date
from employees
where job_id = (SELECT job_id
                From employees
                where employee_id =103);

-- 다중행 서브쿼리
SELECT FIRST_NAME, SALARY
FROM EMPLOYEES
WHERE SALARY > ANY (SELECT SALARY
                FROM EMPLOYEES
                WHERE FIRST_NAME='David');

--상호연관 서브쿼리
select first_name, salary
FROM EMPLOYEES a 
where salary > (SELECT avg(salary)
                FROM employees b
                WHERE b.DEPARTMENT_ID=a.DEPARTMENT_ID);