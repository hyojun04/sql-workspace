-- 제약조건 추가
select * from emps;

alter TABLE emps
    add CONSTRAINT emps_mgr_fk
        FOREIGN KEY(manager_id) REFERENCES emps(employee_id);

-- 제약조건 조회
select constraint_name, constraint_type, status
from USER_CONSTRAINTS
where table_name = 'EMP4';

-- 제약조건 삭제
ALTER TABLE EMPS DROP CONSTRAINT SYS_C008357;

-- 제약조건 비활성화
alter table emp4 disable CONSTRAINT emp4_sal_ck;

--제약조건 활성화
alter table emp4 enable CONSTRAINT emp4_sal_ck;

