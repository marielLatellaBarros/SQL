SELECT INITCAP(last_name) AS "Name", LENGTH(last_name) AS "Length"
FROM employees
WHERE last_name LIKE UPPER('&enterLetter%')
ORDER BY last_name;