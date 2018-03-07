SELECT SUBSTR(job_id,1,2) || SUBSTR(job_id, 4) AS "job_id", job_title, max_salary
FROM jobs
WHERE max_salary < 10000;