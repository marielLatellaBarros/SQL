SELECT RPAD(last_name,8,' ') || LPAD(' ', ROUND(salary/1000), '*') AS "EMPLOYEES_AND_THEIR_SALARIES"
FROM employees
ORDER BY salary DESC;