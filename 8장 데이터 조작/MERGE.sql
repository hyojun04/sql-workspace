-- 임시 테이블 생성
create table emps_it as SELECT * from employees where 1=2;

-- 사원 정보 하나 추가
insert into emps_it
    (EMPLOYEE_ID, FIRST_NAME, LAST_NAME, EMAIL, HIRE_DATE, JOB_ID)
VALUES
    (105, 'David', 'Kim', 'DAVIDKIM', '06/03/04', 'IT_PROG');

-- 테이블 병합
MERGE INTO emps_it a
    USING (SELECT * FROM EMPLOYEES WHERE JOB_ID='IT_PROG') b
    ON (a.employee_id = b.employee_id)
WHEN MATCHED THEN
    UPDATE SET
        a.phone_number =b.phone_number,
        a.hire_date = b.hire_date,
        a.job_id = b.job_id,
        a.salary = b.salary,
        a.commission_pct = b.commission_pct,
        a.manager_id = b.manager_id,
        a.department_id = b.department_id
when not MATCHED THEN
    INSERT VALUES
    (b.employee_id, b.first_name, b.LAST_NAME, b.EMAIL, b.phone_number, b.hire_date,
    b.job_id, b.salary,b.commission_pct, b.manager_id, b.department_id);

select * from EMPS_IT;