CREATE TABLE employees2
AS 
	SELECT employee_id, first_name, last_name, salary, department_id AS "dept_id"
	FROM employees;
