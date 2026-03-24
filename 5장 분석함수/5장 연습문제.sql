-- 1번 문제
SELECT DEPARTMENT_ID, FIRST_NAME, SALARY, 
    rank() over (partition by DEPARTMENT_ID order by SALARY) as sal_rank,
    lag(salary, 1, 0) over (partition by DEPARTMENT_ID order by salary) as prev_salary,
    lag(salary, 1, salary) over (partition by DEPARTMENT_ID order by salary) as prev_salary2
from EMPLOYEES;


-- 2번 문제
select first_name
from EMPLOYEES
where EMPLOYEE_ID = (
    select before_id
    FROM
    (
        SELECT employee_id,
            lag(employee_id,1,0) over (order by employee_id) as before_id
        from EMPLOYEES
    )
    where employee_id = 170
);

-- 3번 문제
select employee_id, DEPARTMENT_ID,
    min(SALARY) OVER(PARTITION BY DEPARTMENT_ID) as lower_sal,
    SALARY as my_sal,
    max(SALARY) OVER(PARTITION BY DEPARTMENT_ID) as higher_sal,
    max(SALARY) OVER(PARTITION BY DEPARTMENT_ID) - SALARY as dff_sal
from EMPLOYEES;