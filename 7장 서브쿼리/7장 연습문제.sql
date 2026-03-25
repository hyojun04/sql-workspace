-- 1번 문제
select *
from EMPLOYEES
where MANAGER_ID in (select distinct MANAGER_ID
                     from EMPLOYEES
                     where department_id = 20);

-- 2번 문제
select first_name
from EMPLOYEES
where salary = (select max(salary) from EMPLOYEES);


-- 3번 문제
select rnum, first_name, salary
from(select first_name, salary, ROWNUM as rnum
     from (select first_name, salary
           from EMPLOYEES
           order by salary desc
            )   
    )
where rnum BETWEEN 3 and 5;

-- 4번 문제
select department_ID, first_name, salary, round(avg_sal)
from (select department_ID, first_name, salary,
             avg(salary) over (PARTITION by department_ID) as avg_sal
      from EMPLOYEES)
where salary >= avg_sal;



