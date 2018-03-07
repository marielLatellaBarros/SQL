SELECT empl.last_name, empl.hire_date, mgr.last_name, mgr.hire_date
FROM employees empl
JOIN employees mgr
ON empl.manager_id = mgr.employee_id
WHERE empl.hire_date < mgr.hire_date
ORDER BY empl.last_name;