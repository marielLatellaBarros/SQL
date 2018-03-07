SELECT last_name, hire_date, TO_CHAR(hire_date, 'DAY') AS "DAY"
FROM employees
ORDER BY "DAY" ASC;