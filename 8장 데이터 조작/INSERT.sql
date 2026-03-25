-- 테이블 구조 확인
DESC DEPARTMENTS;

-- 새로운 행 삽입
insert into DEPARTMENTS values (280,'Data Analytics', null, 1700);

select * from DEPARTMENTS where department_id = 280;

ROLLBACK;

-- 다른 테이블로부터 행 복사
CREATE TABLE managers AS
    SELECT  employee_id, first_name, job_id, salary, hire_date
    FROM EMPLOYEES
    where 1=2;

DESC managers;

INSERT INTO managers
 (employee_id, first_name, job_id, salary, hire_date)
 SELECT employee_id, first_name, job_id, salary, hire_date
 from employees
 where job_id like '%MAN';