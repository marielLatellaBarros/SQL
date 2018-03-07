SELECT SUBSTR(job_id, 1, INSTR(job_id, '_')) || SUBSTR(job_id, INSTR(job_id, ' ' ) + 1) AS "job_id", job_title, max_salary
FROM jobs
WHERE max_salary < 10000;