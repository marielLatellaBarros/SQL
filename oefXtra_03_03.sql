SELECT REPLACE(job_id,'_',' ') AS "job_id", job_title, max_salary
FROM jobs
WHERE max_salary < 10000;