-- 1번 문제
create table EMP_SALARY_INFO as select employee_id, first_name, salary, commission_pct
from EMPLOYEES where 1=2;

select * from EMP_SALARY_INFO;

create table EMP_HIREDATE_INFO as select employee_id, first_name, HIRE_DATE, DEPARTMENT_ID
from EMPLOYEES where 1=2;

select * from EMP_SALARY_INFO;
select * from EMP_HIREDATE_INFO;

-- 2번 문제
desc employees;
insert into EMPLOYEES
values(1234,'Hong','KilDong','HONGKD','010-1234-5678', '18/03/20','IT_PROG',600,0.2,103,60);

SELECT * FROM EMPLOYEES WHERE EMPLOYEE_ID=1234;

-- 3번 문제
UPDATE EMPLOYEES
SET SALARY = SALARY * 1.1
where EMPLOYEE_ID=1234;

-- 4번 문제
delete EMPLOYEES
where EMPLOYEE_ID=1234;


-- 5번 문제
DESC EMPLOYEES;

CREATE TABLE emp_yr_2011(
    EMPLOYEE_ID NUMBER(6),
    first_name VARCHAR2(20),
    HIRE_DATE DATE,
    YR VARCHAR2(4)
)


INSERT ALL 
    WHEN to_Char(HIRE_DATE,'YY') = '11' THEN
        INTO emp_yr_2011 VALUES (EMPLOYEE_ID, first_name, hire_date, YR)
    WHEN to_Char(HIRE_DATE,'YY') = '12' THEN
        INTO emp_yr_2012 VALUES (EMPLOYEE_ID, first_name, hire_date, YR)
    WHEN to_Char(HIRE_DATE,'YY') = '13' THEN
        INTO emp_yr_2013 VALUES (EMPLOYEE_ID, first_name, hire_date, YR)
select EMPLOYEE_ID, first_name, hire_date,to_Char(HIRE_DATE,'YYYY') as YR from EMPLOYEES;

drop table EMP_YR_2013;
select * from EMP_YR_2013;

-- 6번 문제

INSERT FIRST
    WHEN to_Char(HIRE_DATE,'YY') <= '11' THEN
        INTO emp_yr_2011 VALUES (EMPLOYEE_ID, first_name, hire_date, YR)
    WHEN to_Char(HIRE_DATE,'YY') <= '12' THEN
        INTO emp_yr_2012 VALUES (EMPLOYEE_ID, first_name, hire_date, YR)
    WHEN to_Char(HIRE_DATE,'YY') <= '13' THEN
        INTO emp_yr_2013 VALUES (EMPLOYEE_ID, first_name, hire_date, YR)
select EMPLOYEE_ID, first_name, hire_date,to_Char(HIRE_DATE,'YYYY') as YR from EMPLOYEES;

-- 7번 문제
create table emp_personal_info AS
    select EMPLOYEE_ID, FIRST_name, LAST_NAME, email, PHONE_NUMBER
    from EMPLOYEES
    where 1=2;

create table emp_office_info AS
    select EMPLOYEE_ID, hire_date, salary,commission_pct,
        manager_id, department_id
    from EMPLOYEES
    where 1=2;

insert ALL
    into emp_personal_info VALUES
    (EMPLOYEE_ID, FIRST_name, LAST_NAME, email, PHONE_NUMBER)
    into emp_office_info VALUES 
    (EMPLOYEE_ID, hire_date, salary,commission_pct,
        manager_id, department_id)
select * from EMPLOYEES;

select * from emp_office_info;

-- 8번 문제
CREATE TABLE emp_comm AS SELECT	* FROM employees WHERE 1=2;
CREATE TABLE emp_nocomm AS SELECT * FROM employees WHERE 1=2;