SELECT department_id, job_id, manager_id,
    ROUND(AVG(salary),2) AS AVG_SAL
FROM EMPLOYEES
group by
    grouping sets((department_id, job_id),(job_id, manager_id))
order by department_ID, job_id, manager_id