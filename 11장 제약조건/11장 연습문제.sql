--1번 문제
create table member(
    user_id VARCHAR2(15) CONSTRAINT member_userid_pk primary key,
    name VARCHAR2(20),
    pw VARCHAR2(20),
    phone_number VARCHAR2(15),
    email VARCHAR2(100)
)

desc member;

-- 2번 문제
create table dept(
    deptno number(2) CONSTRAINT dept_deptno_pk PRIMARY key,
    dname VARCHAR2(14),
    loc VARCHAR2(13)
);

select constraint_name, constraint_type, status
from USER_CONSTRAINTS
where table_name = 'DEPT';

create table emp(
    empno number(4,0) CONSTRAINT emp_empno_pk PRIMARY key,
    ename VARCHAR2(10),
    job VARCHAR2(9),
    mgr NUMBER(4,0),
    hiredate date,
    sal number(7,2),
    comm number(7,2),
    deptno number(2,0) CONSTRAINT emp_deptno_fk REFERENCES dept(deptno)
);