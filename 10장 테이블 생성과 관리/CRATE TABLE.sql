-- create table
CREATE TABLE dept (
    deptno NUMBER(2),
    dname VARCHAR2(14),
    loc VARCHAR2(13));

DESC DEPT

-- 서브 쿼리를 사용한 테이블 생성
CREATE TABLE emp2 as SELECT * from EMPLOYEES;
