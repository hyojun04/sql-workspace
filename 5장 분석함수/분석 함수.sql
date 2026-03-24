-- 순위 구하기 함수
SELECT EMPLOYEE_ID, DEPARTMENT_ID, SALARY,
    rank() over (order by SALARY desc) sal_rank,
    DENSE_RANK() over (order by SALARY desc) sal_dense_rank,
    row_number() over (order by SALARY desc) sal_number
FROM EMPLOYEES;

--누적 분포와 백분율 순위
select EMPLOYEE_ID, SALARY,
    round(CUME_DIST() over (order by salary), 6) as sal_cume_dist,
    round(percent_rank() over (order by salary), 6) as sal_pct_rank
from EMPLOYEES
where DEPARTMENT_ID=60;

-- 비율 함수
select first_name, salary,
    round(RATIO_TO_REPORT(salary) over (), 4) as salary_ratio
from EMPLOYEES
where job_id = 'IT_PROG';

-- 분배 함수
select EMPLOYEE_ID, DEPARTMENT_ID, SALARY,
    ntile(10) over (order by SALARY desc) sal_quart_tile
from EMPLOYEES
where DEPARTMENT_ID = 50;

-- LAG, LEAD
SELECT employee_id,
    lag(salary, 1, 0) over (order by salary) as lower_sal,
    salary,
    lead(salary, 1, 0) over (order by salary) as higher_sal
from EMPLOYEES
order by salary;

-- listagg
SELECT DEPARTMENT_ID,
    listagg(first_name, ', ') within group (order by HIRE_DATE) as names
from EMPLOYEES
group by DEPARTMENT_ID;