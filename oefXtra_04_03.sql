SELECT last_name, job_id, salary, 
(CASE	WHEN salary < 5000	THEN salary * 1.15
		WHEN (salary >= 5000
		AND  salary <10000) THEN salary * 1.10
		ELSE salary
END) AS "NIEUW SALARIS"
FROM employees;