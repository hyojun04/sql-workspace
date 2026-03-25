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

--스칼라 서브쿼리
select first_name, (select department_name
        from DEPARTMENTS d
        where d.DEPARTMENT_ID=e.department_id) DEPARTMENT_NAME
from EMPLOYEES e
order by first_name;

-- 인라인 뷰
select row_number, first_name, salary
from (select first_name, salary,
       row_number() over (order by salary desc) as row_number
       from employees)
where row_number BETWEEN 1 and 10;

-- 3중 쿼리와 Top-N 쿼리
select rnum, first_name, salary
from (select first_name, salary, rownum as rnum
      from (select first_name, salary
            from EMPLOYEES
            order by salary desc)
    )
where rnum BETWEEN 11 and 20;

-- OFFSET과 FETCH
select first_name, salary
from EMPLOYEES
order by salary DESC
offset 10 rows --10개 행을 건너뜀(11번째 행부터 출력)
fetch first 4 rows only;

-- 계층형 질의
select employee_id,
    lpad(' ', 3*(level-1)) || first_name || ' '||last_name,
    level
from employees
start with manager_id is null
CONNECT by PRIOR EMPLOYEE_ID = MANAGER_ID;

