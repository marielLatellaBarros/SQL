SELECT job_id, (max_salary - min_salary) AS "Verschil in salaris"
FROM jobs
WHERE  (max_salary - min_salary) >= 5000
AND (max_salary - min_salary) <= 10000
ORDER BY 2 ASC
/