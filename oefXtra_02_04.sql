SELECT employee_id, start_date, end_date
FROM job_history
WHERE start_date LIKE '01-JAN-%99'
/