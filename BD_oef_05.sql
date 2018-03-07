CREATE OR REPLACE FUNCTION volgende_vergadering (p_date DATE)
RETURN DATE 
AS
	p_vergadering DATE;
	p_EOM DATE;
	BEGIN
		p_vergadering := NEXT_DAY(ADD_MONTHS(LAST_DAY(p_date), -1),'MONDAY');

		IF p_vergadering < p_date THEN
			p_vergadering := NEXT_DAY(LAST_DAY(p_date),'MONDAY');
		END IF;

		IF TO_CHAR(p_vergadering, 'DD') = '01' 
			AND (	(TO_CHAR(p_vergadering, 'MM') = '01') OR 
					(TO_CHAR(p_vergadering, 'MM') = '05')) THEN
			RETURN p_vergadering + 1;
		 ELSE
		 	RETURN p_vergadering;
		 END IF;
	END;
/