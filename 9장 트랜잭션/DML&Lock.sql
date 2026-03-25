-- 임시 테이블 생성
create table emp AS
    select employee_id as empno, first_name as ename,
    salary as sal, department_id as deptno
from employees;

select empno, ename, sal from emp where deptno=30;

-- DML 명령 실행
UPDATE emp set sal=sal*1.1 where deptno=30;


commit;