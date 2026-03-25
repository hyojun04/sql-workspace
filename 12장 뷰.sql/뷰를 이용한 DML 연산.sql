-- 단순 뷰 생성
create or replace view emp_dept60
as select * from emps where DEPARTMENT_ID=60;

select * from emp_dept60;

-- 삭제
delete from emp_dept60 where EMPLOYEE_ID=105;

-- 행을 제거할 수 없는 뷰 생성
create or replace view emp_dept60
as select DISTINCT * from  emps where DEPARTMENT_ID=60;

delete from emp_dept60 where EMPLOYEE_ID=106;

-- 데이터 수정
create or replace view emp_dept60
as select 
    employee_id,
    first_name || ', ' || last_name as name,
    salary*12 as annual_salary
from  emps where DEPARTMENT_ID=60;

-- annual_salary가 표현식임으로 수정 불가
update emp_dept60 set annual_salary = annual_salary*1.1 where employee_di =106;

-- 데이터 입력
create or replace view emp_dept60
as select 
    employee_id,
    first_name,
    last_name,
    email,
    salary
from  emps where DEPARTMENT_ID=60;

-- 기본 테이블의 not null 속성이 view에 존재하지 않기 때문에 입력 불가
insert into emp_dept60 VALUES (500, 'JinKyoung', 'heo', 'heojk', 8000);

-- with check option
create or replace view emp_dept60
as select 
    employee_id,
    first_name,
    hire_date,
    salary,
    department_id
from  emps where DEPARTMENT_ID=60
with check option;

select * from emp_dept60;

update emp_dept60 set department_id = 10 where employee_id= 107;

--with read only
create or replace view emp_dept60
as select 
    employee_id,
    first_name,
    hire_date,
    salary,
    department_id
from  emps where DEPARTMENT_ID=60
with read ONLY;

delete from emp_dept60 where employee_id= 107;