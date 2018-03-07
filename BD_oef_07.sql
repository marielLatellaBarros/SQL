CREATE OR REPLACE FUNCTION jaarloon(p_employee_id employees.employee_id%type)
RETURN NUMBER 
AS
	v_salary employees.employee_id%type;
	v_commission employees.commission_pct%type;
	v_jaarloon NUMBER(10);
	BEGIN
		SELECT salary, commission_pct
		INTO v_salary, v_commission
		FROM employees
		WHERE employee_id = p_employee_id;

		v_jaarloon := (v_salary + v_salary * NVL(v_commission,0)) * 12;

		RETURN v_jaarloon;
	END;
/