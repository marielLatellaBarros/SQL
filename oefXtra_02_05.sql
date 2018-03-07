SELECT employee_id, start_date, end_date
FROM job_history
WHERE start_date LIKE '%98'
AND department_id  = 50
/