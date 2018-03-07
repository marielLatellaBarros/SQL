SELECT last_name, salary, commission_pct, NVL2(commission_pct, TO_CHAR(commission_pct * salary), 'Geen commissie') AS "Commissiebedrag"
FROM employees
ORDER BY "Commissiebedrag" ASC;