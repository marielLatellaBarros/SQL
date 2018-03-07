CREATE OR REPLACE FUNCTION schrikkeljaar
RETURN VARCHAR2 
AS 
	v_isLeapYear VARCHAR2(255);
	v_year VARCHAR2(15);
	BEGIN
		v_year := TO_CHAR(sysdate,'YYYY');
		IF ( mod(v_year, 4) = 0 and mod(v_year, 100) <> 0 ) or ( mod(v_year, 400) = 0 ) then 
			v_isLeapYear := 'het jaar ' || v_year || ' is een schrikkeljaar';
		ELSE v_isLeapYear := 'het jaar ' || v_year || ' is geen schrikkeljaar';
	    END IF;
	RETURN v_isLeapYear;
	END;
/
