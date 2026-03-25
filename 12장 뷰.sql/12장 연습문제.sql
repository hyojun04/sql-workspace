-- 1번 문제
create or replace view sal_gap_view_by_job as select
    e.first_name as name,
    e.job_id,
    round((j.MAX_SALARY+j.MIN_SALARY)/2)- e.salary as job_sal_gap
    from employees e
    join jobs j
    on e.job_id = j.job_id

select * from SAL_GAP_VIEW_BY_JOB;

-- 2번 문제
create or replace view emp_12prob as SELECT
    EMPLOYEE_ID as ID,
    FIRST_NAME as NAME,
    d.DEPARTMENT_NAME as DEPARTMENT,
    j.JOB_TITLE as JOB
    from EMPLOYEES e
    join jobs j 
        on e.job_id=j.job_id
    join departments d
        on e.department_id = d.department_id;

select * from emp_12prob;