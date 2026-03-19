select FIRST_NAME, last_name, to_char(salary, '$999,999') as SALARY
from EMPLOYEES
where first_name ='David';

SELECT to_number('$5,500.00', '$99,999.99') - 4000
from dual;

SELECT first_name, hire_date
from EMPLOYEES
where HIRE_DATE=to_date('06/17/2013', 'MM/DD/YYYY');