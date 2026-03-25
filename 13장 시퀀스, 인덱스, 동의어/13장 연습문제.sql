-- 1번 문제
create SEQUENCE BOARD_SEQ
    start with 1
    INCREMENT by 1
    cache 20
    nocycle;

select sequence_name, min_value, max_value,
        INCREMENT_BY, LAST_NUMBER
from user_sequences;

-- 2번 문제
create index idx_emp_realsal on employees coalesce(salary+salary*commission_pct,salary);
select EMPLOYEE_ID, salary,coalesce(salary+salary*commission_pct,salary) from employees;