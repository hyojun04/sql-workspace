-- LNNVL 함수
SELECT FIRST_NAME, COALESCE(salary*COMMIsSION_PCT, 0) AS bonus
from EMPLOYEES
where LNNVL(salary*COMMISSION_PCT >= 650);

-- DECODE 함수
SELECT job_id, salary,
    DECODE(job_id, 'IT_PROG', salary*1.10,
                    'FI_MGR', salary*1.15,
                    'FI_ACCOUNT', salary*1.20,
                    salary)
    AS revised_salary
FROM EMPLOYEES;

-- CASE~WHEN~THEN

SELECT job_id, salary,
    CASE job_id WHEN 'IT_PROG' THEN salary*1.10
                WHEN 'FI_MGR'  THEN salary*1.15
                WHEN 'FI_ACCOUNT' THEN salary*1.20
        ELSE SALARY
    END AS revised_salary
FROM EMPLOYEES;