-- REGR_AVGX(y,x), REGR_AVGY(y,x)
select 
    avg(salary),
    REGR_AVGX(commission_pct, salary),
    REGR_AVGY(commission_pct, salary)
from EMPLOYEES;

-- REGR_COUNT(y,x)
SELECT 
    DISTINCT
        DEPARTMENT_ID,
        regr_count(MANAGER_ID, DEPARTMENT_ID)
            over(PARTITION by DEPARTMENT_ID) as "REGR_COUNT"
from EMPLOYEES
order by DEPARTMENT_ID;

-- REGR_SLOPE(y,x), REGR_INTERCEPT(y,x)
SELECT  
    job_id, EMPLOYEE_ID, salary,
    round(sysdate-HIRE_DATE) as "WORKING_DAY",
    round(REGR_SLOPE(salary, sysdate-hire_date)
    over (partition by JOB_ID),2) as "REGR_SLOPE",
    ROUND(REGR_INTERCEPT(salary,  sysdate-HIRE_DATE)
    over (PARTITION by JOB_ID),2) as "REGR_INTERCEPT"
from EMPLOYEES
where DEPARTMENT_ID = 80
order by JOB_ID, EMPLOYEE_ID;

-- REGR_R2(y,x)
SELECT 
    DISTINCT
    JOB_ID,
    ROUND(REGR_SLOPE(salary, sysdate- hire_date)
    over(partition by job_id),2) as "REGR_SLOPE",
    round(REGR_SLOPE(salary, sysdate-hire_date)
    over (partition by JOB_ID),2) as "REGR_SLOPE",
    round(REGR_R2(salary, sysdate-hire_date)
    over (partition by JOB_ID),2) as "REGR_R2"
FROM EMPLOYEES
WHERE DEPARTMENT_ID = 50;