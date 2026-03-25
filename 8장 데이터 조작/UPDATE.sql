-- 복제 테이블 생성 및 제약조건 추가
CREATE TABLE emps AS SELECT * FROM employees;

ALTER TABLE emps
    ADD (CONSTRAINT emps_emp_id_pk PRIMARY KEY (employee_id),
         CONSTRAINT emps_manager_id_pk FOREIGN KEY (employee_id)
                    REFERENCES emps(employee_id)
    );

-- 테이블 행 갱신
select employee_id, FIRST_NAME, SALARY
from EMPS
where EMPLOYEE_ID=103;

UPDATE EMPS
set SALARY=SALARY*1.1
WHERE EMPLOYEE_ID = 103;

--서브쿼리로 다중 열 갱신
select employee_id, first_name, job_id, salary, manager_id
from EMPS
where EMPLOYEE_ID in (108,109);

UPDATE EMPS
set (job_id, salary, MANAGER_ID) = 
    (select job_id, salary, MANAGER_ID
     from EMPS
     where employee_id = 108)
where EMPLOYEE_ID = 109;