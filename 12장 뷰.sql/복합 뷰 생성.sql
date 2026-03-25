-- 복합 뷰 생성
create view emp_view
as SELECT
    e.employee_id as id,
    e.first_name as name,
    d.department_name as department,
    j.job_title as job
from employees e
left join departments d on e.department_id = d.DEPARTMENT_ID
join jobs j on e.job_id = j.job_id;

select * from emp_view;

-- 뷰 삭제
drop view emp_view;