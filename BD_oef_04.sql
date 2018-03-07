CREATE OR REPLACE FUNCTION schrikkeljaar (p_year  NUMBER)
RETURN VARCHAR2 
AS  
    v_isLeapYear number := extract(year(from sysdate);
    BEGIN
        IF	( mod(p_year, 4) = 0 and mod(p_year, 100) <> 0 ) or 
        	( mod(p_year, 400) = 0 ) then 
           		v_isLeapYear := 'het jaar ' || p_year || ' is een schrikkeljaar';
        ELSE 
        		v_isLeapYear := 'het jaar ' || p_year || ' is geen schrikkeljaar';
        END IF;
    RETURN v_isLeapYear;
    END;
/