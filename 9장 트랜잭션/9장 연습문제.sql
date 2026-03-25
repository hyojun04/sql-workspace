-- 1번 문제
create table EMP_TEMP as SELECT * from employees;

-- 2번 문제
delete from emp_temp where DEPARTMENT_ID=20;
SAVEPOINT SVPNT_DEL_20;

-- 3번 문제 
delete from emp_temp where department_id=50;
savepoint SVPNT_DEL_50;

delete from emp_temp where department_id=60;

rollback to SAVEPOINT SVPNT_DEL_50;

SELECT * from emp_temp where department_id=60;