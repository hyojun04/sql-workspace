-- 열 레벨 제약조건
create table emp4 (
    empno NUMBER(4)  CONSTRAINT emp4_empno_pk PRIMARY KEY,
    ename VARCHAR2(10) NOT NULL,
    sal NUMBER(7,2) CONSTRAINT emp4_sal_ck CHECK(sal<=10000),
    deptno NUMBER(2) CONSTRAINT emp4_deptno_dept_deptid_fk
                     REFERENCES departments(department_id)
 );

-- 테이블 레벨 제약조건
create table emp5(
    empno number(4),
    ename varchar2(10) not null,
    sal number(7,2),
    deptno number(2),
    CONSTRAINT emp5_empno_pk PRIMARY key (empno),
    CONSTRAINT emp5_sal_ck CHECK(sal<=10000),
    CONSTRAINT emp5_deptno_dept_deptid_fk
      FOREIGN KEY (deptno) REFERENCES departments(department_id)
);