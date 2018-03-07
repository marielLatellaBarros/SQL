SELECT UPPER(e.last_name) || ' ' || UPPER(e.last_name) AS "Name and Last name employee", e.manager_id AS "Manager", e.department_id AS "Empl Dpt", d.department_id AS "DptDpt", d.manager_id AS "Dept Mgr"
FROM employees e
JOIN departments d
ON e.department_id = d.department_id
WHERE e.manager_id <> d.manager_id;