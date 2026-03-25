-- 테이블 내용 확인
select * from emps where EMPLOYEE_ID= 104;

-- 행 삭제
delete from EMPS 
where EMPLOYEE_ID= 104;

rollback;

-- 다른 테이블을 이용한 행 삭제
CREATE TABLE depts AS SELECT * FROM departments;

DESC depts;

DELETE FROM EMPS
where department_id = 
                    (SELECT DEPARTMENT_ID
                    from depts
                    where department_name = 'Shipping');
commit;