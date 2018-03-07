SELECT job_id, 
DECODE (job_id, 'AD_PRES',	'A',
				'ST_MAN',	'B',
				'IT_PROG',	'C',
				'SA_REP',	'D',
				'ST_CLERK',	'E',
				0 ) AS "GRADE"
FROM jobs
ORDER BY "GRADE" ASC;