--인라인 뷰
select row_number, first_name,salary
from (select first_name, salary,
      row_number() over (order by salary desc) as row_number
      from employees)
where row_number BETWEEN 1 and 10;