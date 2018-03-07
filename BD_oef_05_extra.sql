CREATE OR REPLACE FUNCTION volgende_vergadering
RETURN DATE 
AS
	v_datum DATE;
	BEGIN
		v_datum := last_day(sysdate)+ 1;
		IF TO_CHAR(v_datum, 'fmday') != 'monday' THEN
		v_datum :=next_day(v_datum,'mon');
		END IF;

		IF TO_CHAR(v_datum, 'dd-mm') = '01-01' OR (v_datum, 'dd-mm') = '01-05' THEN 
		v_datum :=v_datum + 1;
		END IF

		RETURN v_datum;
	END;
/