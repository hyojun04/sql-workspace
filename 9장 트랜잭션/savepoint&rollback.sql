-- 10번 부서 사원의 정보를 삭제
delete from emps where DEPARTMENT_ID=10;

-- 롤백 지점 생성
savepoint delete_10;

-- 20번 부서의 사원의 정보를 삭제
delete from emps where DEPARTMENT_ID=20;

-- 롤백 지점 생성
savepoint delete_20;

-- 30번 부서의 사원의 정보를 삭제
delete from emps where DEPARTMENT_ID=30;

-- 30번 부서의 사원 정보를 삭제했던 작업을 취소
rollback to SAVEPOINT delete_20;

