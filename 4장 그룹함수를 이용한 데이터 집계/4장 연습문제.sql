-- 1번 문제
select job_id, avg(salary)
from employees
group by job_id;

-- 2번 문제
select department_ID, count(*)
from EMPLOYEES
group by DEPARTMENT_ID;

-- 3번 문제
select department_ID, job_id, count(*)
from EMPLOYEES
group by DEPARTMENT_ID,job_id;

-- 4번 문제
select department_ID, round(stddev(salary),2)
from EMPLOYEES
group by DEPARTMENT_ID;

-- 5번 문제
select department_ID, count(*)
from EMPLOYEES
group by DEPARTMENT_ID
having count(*) >=4;

-- 6번 문제
select job_id, count(*)
from EMPLOYEES
where DEPARTMENT_ID = 50
group by job_id;

-- 7번 문제
select job_id, count(*)
from EMPLOYEES
where DEPARTMENT_ID = 50
group by JOB_ID
having count(*) <=10;

