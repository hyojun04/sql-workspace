-- 윈도우 절 사용
select DEPARTMENT_ID, first_name, salary,
    sum(salary) over (PARTITION by DEPARTMENT_ID
                      order by salary
                      rows between unbounded preceding
                      and current row) as sum_rows
from EMPLOYEES;