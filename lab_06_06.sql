SELECT empl.department_id AS "Department", empl.last_name AS "Employee", colleague.last_name AS "Colleague"
FROM employees empl
JOIN employees colleague
ON colleague.department_id = empl.department_id
WHERE colleague.department_id = empl.department_id
ORDER BY "Department";