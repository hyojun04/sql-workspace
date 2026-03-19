SELECT first_name, job_id, department_id
FROM EMPLOYEES
Where job_id='IT_PROG';

SELECT first_name, salary, hire_date
FROM EMPLOYEES
WhERE salary>=15000;

SELECT first_name, salary
FROM EMPLOYEES
WHERE salary BETWEEN 10000 AND 12000;

SELECT employee_id, first_name, salary, manager_id
FROM EMPLOYEES
WHERE manager_id IN(101,102,103);

SELECT first_name, last_name, job_id, department_id
FROM EMPLOYEES
where job_id LIKE 'IT%';

SELECT first_name, email
FROM EMPLOYEES
where email LIKE '_A%';

SELECT first_name, job_id
FROM EMPLOYEES
where job_id LIKE 'SA/_M%' ESCAPE '/';

SELECT first_name, manager_id
FROM EMPLOYEES
WHERE manager_id IS NULL;

SELECT first_name, job_id, salary
FROM EMPLOYEES
WHERE (job_id='IT_PROG' OR job_id='FI_MGR')
AND salary>= 6000;