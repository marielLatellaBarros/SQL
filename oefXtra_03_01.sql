SELECT CONCAT(job_title, LPAD(' ', ROUND(min_salary/1000), '#')) AS "Jobs and their salaries"
FROM jobs;