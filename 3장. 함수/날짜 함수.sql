SELECT FIRST_NAME, SYSDATE, HIRE_DATE, MONTHS_BETWEEN(SYSDATE, HIRE_DATE) AS workmonth
from EMPLOYEES
where FIRST_NAME = 'Diana';

SELECT FIRST_NAME, HIRE_DATE, ADD_MONTHS(HIRE_DATE,100) 
from EMPLOYEES
where FIRST_NAME = 'Diana';

SELECT SYSDATE, next_day(SYSDATE, 'mon')
from dual;

SELECT SYSDATE, LAST_DAY(SYSDATE)
FROM dual;

select sysdate, trunc(sysdate, 'month'), round(sysdate, 'month')
from dual;