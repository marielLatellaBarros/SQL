CREATE OR REPLACE FUNCTION netto (p_brutoSalaris  employees.salary%type)
RETURN VARCHAR2 
AS  
	v_nettoSalaris employees.salary%type;
	BEGIN
		v_nettoSalaris := TO_CHAR(p_brutoSalaris * 0.6, '99,999,999.00') || ' euro';
		RETURN v_nettoSalaris;
	END;
/