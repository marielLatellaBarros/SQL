CREATE OR REPLACE FUNCTION netto2 (p_brutoSalaris  employees.salary%type)
RETURN VARCHAR2 
AS  
	v_nettoSalaris employees.salary%type;
	BEGIN
		IF p_brutoSalaris < 10000 THEN
			v_nettoSalaris := p_brutoSalaris * 0.6;
		ELSE
			IF p_brutoSalaris <= 16000 THEN
				v_nettoSalaris := 10000 * 0.6 +  (p_brutoSalaris - 10000) * 0.5;
			ELSE
				v_nettoSalaris :=  10000 * 0.6 +  (p_brutoSalaris - 10000) * 0.5 + (p_brutoSalaris - 16000) * 0.4;
			END IF;
		END IF;

	v_nettoSalaris := TO_CHAR(v_nettoSalaris, '99,999,999.00') || ' euro' ;

	RETURN v_nettoSalaris;
	END;
/