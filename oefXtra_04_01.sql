SELECT TO_CHAR(hire_date,'fmDay", the "DDth MONTH" of the year "YYYY') AS "AANWERVINGSDATUM",
		'De werknemer ' || last_name || ' werkt ' || TRUNC((sysdate - hire_date) / 365) || ' jaren bij ons' AS "Dienstjaren"
FROM employees;