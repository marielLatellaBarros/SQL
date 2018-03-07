SELECT e.employee_id, e.last_name, e.job_id, j.job_title
FROM employees e
JOIN jobs j 
ON e.job_id = j.job_id;