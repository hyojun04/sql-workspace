-- 임시 테이블 생성
create table emp_dept50
AS select employee_id,first_name, salary*12 as ann_sal, hire_date
from employees where department_id=50;

-- 테이블 구조 확인
DESC emp_dept50;

-- 열 추가
alter table emp_dept50
add (job VARCHAR2(10));

-- 열 수정
ALTER TABLE emp_dept50
MODIFY (first_name VARCHAR2(30));

-- 열 삭제
ALTER TABLE emp_dept50
DROP COLUMN job;

-- 열 이름 변경
alter table emp_dept50
rename column first_name TO name;

-- set unused & drop unused
alter table emp_dept50
set unused (name);

alter table emp_dept50
drop unused COLUMNS;

-- 객체 이름 변경
RENAME emp_dept50 TO employees_dept50;

