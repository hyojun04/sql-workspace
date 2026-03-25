-- 예제 테이블 생성
DROP TABLE emps;

create table emps as select * from employees;

select * from emps where FIRST_NAME='David';

-- 인덱스 생성
create index emps_first_name_idx
on emps(first_name);

-- 인덱스 삭제
DROP INDEX emps_first_name_idx;

-- 인덱스 확인
SELECT ic.index_name, ic.column_name,
       ix.uniqueness
FROM   USER_INDEXES ix, USER_IND_COLUMNS ic
WHERE  ic.INDEX_NAME = ix.INDEX_NAME
AND    ic.TABLE_NAME = 'EMPLOYEES';

-- 인덱스 종류

-- Bitmap 인덱스
CREATE BITMAP INDEX emps_comm_idx ON emps(commission_pct);
select * from emps where COMMISSION_PCT > 0.35;

-- Unique 인덱스
CREATE UNIQUE INDEX emps_email_idx ON emps(email);
select * from emps where email='DAUSTIN';

-- 함수 기반 인덱스 
CREATE INDEX emps_annsal_idx ON emps(COALESCE(salary+salary*commission_pct,salary));
select * from emps where COALESCE(salary+salary*commission_pct,salary) > 10000;

-- 복합 인덱스
CREATE UNIQUE INDEX emps_name_idx ON emps(first_name, last_name);
select * from emps where first_name='Peter' and last_name='Hall';