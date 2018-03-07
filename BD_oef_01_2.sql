CREATE OR REPLACE FUNCTION dagen_einde_maand
RETURN NUMBER 
AS 
	BEGIN 
		RETURN LAST_DAY(sysdate) - sysdate;
	END;
/