SELECT empl.last_name AS "Employee", empl.employee_id AS "EMP#", mgr.last_name AS "Manager", mgr.employee_id AS "Mgr#"
FROM employees empl
JOIN employees mgr
ON empl.manager_id = mgr.employee_id;