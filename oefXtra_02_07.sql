SELECT job_id || ' is a ' || job_title AS "Functie"
FROM jobs
WHERE job_id LIKE '%MAN%'
AND job_title LIKE '_a%'
/