-- UNCONDITIONAL INSERT ALL

-- 임시 테이블 생성
CREATE TABLE emp_salary AS
    SELECT employee_id, FIRST_NAME, SALARY, COMMISSION_PCT
    from EMPLOYEES
    where 1=2;

CREATE TABLE emp_hire_date AS
    SELECT employee_id, FIRST_NAME, hire_date, department_id
    from EMPLOYEES
    where 1=2;

-- INSERT
INSERT ALL
    INTO emp_salary VALUES
        (EMPLOYEE_ID, FIRST_NAME, SALARY, COMMISSION_PCT)
    INTO emp_hire_date VALUES
        (employee_id, first_name, hire_date, department_id)
    select * from employees;

select * from EMP_SALARY;
select * from EMP_hire_date;

-- CONDITIONAL INSERT ALL

-- 임시 테이블 생성
create table emp_10 as SELECT * from EMPLOYEES where 1=2;
create table emp_20 as SELECT * from EMPLOYEES where 1=2;

-- insert
INSERT ALL 
    WHEN department_id = 10 THEN
        INTO emp_10 VALUES
            (EMPLOYEE_ID, FIRST_NAME, LAST_NAME, EMAIL, PHONE_NUMBER,
             HIRE_DATE, JOB_ID, SALARY, COMMISSION_PCT, MANAGER_ID,
             DEPARTMENT_ID)
    WHEN DEPARTMENT_ID = 20 THEN
        INTO emp_20 VALUES
            (EMPLOYEE_ID, FIRST_NAME, LAST_NAME, EMAIL, PHONE_NUMBER,
             HIRE_DATE, JOB_ID, SALARY, COMMISSION_PCT, MANAGER_ID,
             DEPARTMENT_ID)
    SELECT * FROM EMPLOYEES;
SELECT * FROM emp_20;

-- CONDITIONAL INSERT FIRST


-- 임시 테이블 생성
create table emp_sal5000 as SELECT EMPLOYEE_ID, FIRST_NAME, SALARY from EMPLOYEES where 1=2;
create table emp_sal10000 as SELECT EMPLOYEE_ID, FIRST_NAME, SALARY from EMPLOYEES where 1=2;
create table emp_sal15000 as SELECT EMPLOYEE_ID, FIRST_NAME, SALARY from EMPLOYEES where 1=2;
create table emp_sal20000 as SELECT EMPLOYEE_ID, FIRST_NAME, SALARY from EMPLOYEES where 1=2;
create table emp_sal25000 as SELECT EMPLOYEE_ID, FIRST_NAME, SALARY from EMPLOYEES where 1=2;

--insert
insert FIRST
    when salary <= 5000 THEN
        into EMP_SAL5000 VALUES (EMPLOYEE_ID, FIRST_NAME, SALARY)
    when salary <= 10000 THEN
        into EMP_SAL10000 VALUES (EMPLOYEE_ID, FIRST_NAME, SALARY)
    when salary <= 15000 THEN
        into EMP_SAL15000 VALUES (EMPLOYEE_ID, FIRST_NAME, SALARY)
    when salary <= 20000 THEN
        into EMP_SAL20000 VALUES (EMPLOYEE_ID, FIRST_NAME, SALARY)
    when salary <= 25000 THEN
        into EMP_SAL25000 VALUES (EMPLOYEE_ID, FIRST_NAME, SALARY)
    select employee_id, first_name, salary from EMPLOYEES;

select count(*) from EMP_SAL5000;
select count(*) from EMP_SAL10000;
select count(*) from EMP_SAL15000;
select count(*) from EMP_SAL20000;
select count(*) from EMP_SAL25000;

--UNPIVOTING INSERT

-- 임시 테이블 생성
CREATE TABLE sales(
    employee_id NUMBER(6),
    week_id     NUMBER(2),
    sales_mon   NUMBER(8,2),
    sales_tue   NUMBER(8,2),
    sales_wed   NUMBER(8,2),
    sales_thu   NUMBER(8,2),
    sales_fri   NUMBER(8,2)
);
truncate TABLE sales_log;

-- INSERT
INSERT ALL
    INTO SALES_LOG
        values(EMPLOYEE_ID, week_id, 'SALES_MON', sales_mon)
    INTO SALES_LOG
        values(EMPLOYEE_ID, week_id, 'SALES_TUE', sales_TUE)
    INTO SALES_LOG
        values(EMPLOYEE_ID, week_id, 'SALES_WED', sales_WED)
    INTO SALES_LOG
        values(EMPLOYEE_ID, week_id, 'SALES_THU', sales_THU)
    SELECT employee_id, week_id, sales_mon, sales_tue, sales_WED,
            sales_thu
    from sales;
            
select * from SALES_LOG;