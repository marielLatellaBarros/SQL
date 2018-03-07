SELECT start_date, end_date, TRUNC(MONTHS_BETWEEN(end_date, start_date), 0) AS "TOTAL MONTHS", LAST_DAY(end_date) AS "END DAY"
FROM job_history
WHERE end_date - ADD_MONTHS(start_date, 12) >= 0
ORDER BY "TOTAL MONTHS: DESC;