SELECT e.employee_id, e.last_name, e.job_id, j.job_title
FROM employees e
JOIN jobs j 
ON e.job_id = j.job_id
WHERE j.job_id LIKE 'AD\_%' ESCAPE '\'
OR j.job_id LIKE 'SA\_%' ESCAPE '\';