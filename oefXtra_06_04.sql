SELECT d.department_id, d.department_name, e.first_name ||' ' || e.last_name AS "Manager"
FROM departments d
JOIN employees e
ON d.manager_id = e.employee_id
WHERE d.department_id = 90;