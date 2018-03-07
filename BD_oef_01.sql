CREATE OR REPLACE FUNCTION dagen_einde_maand
RETURN NUMBER 
IS 
BEGIN 
	RETURN LAST_DAY(sysdate) - sysdate;
END;
/