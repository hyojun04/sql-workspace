-- 시퀀스 생성
CREATE SEQUENCE DEPTS_SEQ
    start with 91
    increment by 1
    maxvalue 100
    NOCYCLE
    nocache;

-- 시퀀스 확인
select sequence_name, min_value, max_value,
        INCREMENT_BY, LAST_NUMBER
from user_sequences;


-- 시퀀스 사용
INSERT INTO depts(DEPARTMENT_ID , DEPARTMENT_NAME)
VALUES (DEPTS_SEQ.nextval, 'MARKETING');

select * from depts;

select depts_seq.currval from dual;

-- 시퀀스 수정
ALTER SEQUENCE DEPTS_SEQ
    MAXVALUE 99999;

-- 시퀀스 삭제
DROP SEQUENCE depts_seq;

-- IDENTITY COLUMN
CREATE TABLE DEPTS(
    deptno number(2) generated always as IDENTITY(START WITH 10 INCREMENT BY 10),
    dname VARCHAR2(14),
    loc VARCHAR2(13) unique,
    CONSTRAINT depts_deptno_pk PRIMARY key(deptno)
);

insert into depts(dname, loc)
values ('MARKETING','SAN DIEGO');

SELECT * FROM DEPTS;