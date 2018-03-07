CREATE OR REPLACE FUNCTION aantal_dienstjaren (p_hiredate 	employees.hire_date%type)
RETURN NUMBER 
AS 
	v_dienstjaren NUMBER(2);
	BEGIN
		v_dienstjaren := TRUNC(months_between(sysdate, p_hiredate) / 12);
		RETURN v_dienstjaren;
	END;
/