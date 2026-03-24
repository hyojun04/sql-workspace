-- 1번 문제. employees 테이블 - departments 테이블 - locations 테이블 join
select e.FIRST_NAME, d.DEPARTMENT_NAME, l.city
from employees e, departments d, locations l
where e.department_id = d.department_id and d.LOCATION_ID = l.LOCATION_ID and e.first_name = 'John';

select e.FIRST_NAME, d.DEPARTMENT_NAME, l.city
from employees e
join departments d on e.department_id = d.department_id
join locations l on d.LOCATION_ID = l.LOCATION_ID
where e.FIRST_NAME = 'John';

-- 2번 문제. 매니저 이름과 부서 이름으로 self join 후 departments와 join
select e.EMPLOYEE_ID, e.FIRST_NAME,e.salary, m.FIRST_NAME, d.DEPARTMENT_NAME
from employees e 
join employees m on e.MANAGER_ID = m.EMPLOYEE_ID
join DEPARTMENTS d on m.DEPARTMENT_ID = d.DEPARTMENT_ID
where e.employee_id = 103;

-- 3번 문제.
SELECT e.EMPLOYEE_ID, e.FIRST_NAME, e.SALARY, m.FIRST_NAME, m.SALARY, d.DEPARTMENT_NAME
from employees e, employees m, departments d
where e.MANAGER_ID = m.EMPLOYEE_ID(+) and m.DEPARTMENT_ID = d.DEPARTMENT_ID(+)
and e.department_id = 90;

SELECT e.EMPLOYEE_ID, e.FIRST_NAME, e.SALARY, m.FIRST_NAME, m.SALARY, d.DEPARTMENT_NAME
from employees e
left outer join employees m on e.MANAGER_ID = m.EMPLOYEE_ID
left outer join departments d on m.DEPARTMENT_ID = d.DEPARTMENT_ID 
where e.department_id = 90;

-- 4번 문제
SELECT e.EMPLOYEE_ID, l.CITY
from employees e
join departments d on e.department_id = d.department_id
join locations l on d.LOCATION_ID = l.LOCATION_ID
where employee_id = 103;

-- 5번 문제
/*
select l.city as "Department Location", 
from employees e
join e.mana
join departments d on e.department_id = d.department_id
join locations l on d.LOCATION_ID = l.LOCATION_ID
where employee_id = 103;
*/