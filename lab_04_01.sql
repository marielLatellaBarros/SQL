SELECT last_name || ' earns ' || TO_CHAR(salary, '$99,999.00') || ' monthly but wants ' || TO_CHAR((salary * 3), '$99,999.00') 
AS "Dream Salaries"
FROM employees;