SELECT job_id || ' is a ' || job_title AS "Functie"
FROM jobs
WHERE UPPER(job_id) LIKE '%MAN%'
AND UPPER(job_title) LIKE '_A%'
/