SELECT start_date, end_date, ROUND(MONTHS_BETWEEN(end_date, start_date)) AS "TOTAL MONTHS", LAST_DAY(end_date) AS "END DAY"
FROM job_history
WHERE ROUND(MONTHS_BETWEEN(end_date, start_date)) >= 12
ORDER BY "TOTAL MONTHS" DESC;