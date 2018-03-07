SELECT e.last_name, e.job_id, d.department_name, e.salary, j.grade_level
FROM employees e
JOIN departments d
ON e.department_id = d.department_id
JOIN job_grades j
ON salary BETWEEN lowest_sal AND highest_sal
ORDER BY 5 ASC;