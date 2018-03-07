SELECT employee_id, last_name, salary, department_id
FROM employees
WHERE manager_id =  &define_manager
ORDER BY &define_Col_Sort
/