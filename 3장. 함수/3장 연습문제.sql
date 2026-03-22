-- 1번 문제
select *
from EMPLOYEES
where lower(EMAIL) like '%lee%';

-- 2번 문제
select FIRST_name, salary, JOB_ID
from EMPLOYEES
where MANAGER_ID = 103;

-- 3번 문제
SELECT *
FROM EMPLOYEES
WHERE (DEPARTMENT_ID = 80 AND JOB_ID = 'SA_MAN') OR (DEPARTMENT_ID = 20 AND MANAGER_ID = 100);

-- 4번 문제
SELECT REPLACE(PHONE_NUMBER,'.','-') AS 전화번호
FROM EMPLOYEES;

-- 5번 문제
SELECT RPAD(FIRST_NAME || ' ' || LAST_NAME,20,'*') AS FULL_NAME, TO_CHAR(SALARY,'$099,999.99') AS SALARY, 
                             HIRE_DATE, ROUND(SYSDATE - HIRE_DATE) AS WORK_DAY
FROM EMPLOYEES
WHERE SALARY >= 5000 AND JOB_ID = 'IT_PROG'
ORDER BY FULL_NAME;

-- 6번 문제
SELECT RPAD(FIRST_NAME || ' ' || LAST_NAME,20,'*') AS FULL_NAME, TO_CHAR(SALARY,'$099,999.99') AS SALARY, 
                             HIRE_DATE, MONTHS_BETWEEN(SYSDATE , HIRE_DATE) AS MONTH
FROM EMPLOYEES
WHERE DEPARTMENT_ID = 30
ORDER BY FULL_NAME; 

-- 7번 문제
SELECT RPAD(first_name|| ' ' || last_name,17,'*') as 이름, to_char(salary,'$09,999.99') as 급여
from EMPLOYEES
where DEPARTMENT_ID = 80 and SALARY > 10000;

-- 8번 문제
select first_name as 이름, round(months_between(sysdate,hire_date)/12) as 근무년수
from EMPLOYEES
where DEPARTMENT_ID = 30;

-- 9번 문제
select hire_date+1000 
from EMPLOYEES
where lower(first_name) = 'lex';

-- 10번 문제
select first_name, hire_date
from EMPLOYEES
where to_char(hire_date,'MM') = '05';

-- 11번 문제
select to_char(hire_date,'YYYY') || '년 입사' as year, salary,to_char(hire_date, 'DY') || '요일' as day,
       to_char(CASE WHEN TO_CHAR(HIRE_DATE,'YY') >= '10' THEN SALARY*1.1
            WHEN '10'> TO_CHAR(HIRE_DATE,'YY') AND TO_CHAR(HIRE_DATE,'YY') >='05' THEN SALARY*1.05
            ELSE SALARY END , '$99,999') AS INCREASING_SALARY
from employees;

select to_char(hire_date,'YYYY') || '년 입사' as year, salary,to_char(hire_date, 'DY') || '요일' as day,
       to_char(CASE WHEN TO_CHAR(HIRE_DATE,'YY') >= '10' THEN SALARY*1.1
            WHEN '10'>TO_CHAR(HIRE_DATE,'YY') and  TO_CHAR(HIRE_DATE,'YY')>='05' THEN SALARY*1.05
            ELSE SALARY END , '$99,999') AS INCREASING_SALARY
from employees;

-- 12번 문제(11 문제와 동일)

-- 13번 문제
select COUNTRY_ID, nvl(STATE_PROVINCE,COUNTRY_ID) as STATE
from locations;