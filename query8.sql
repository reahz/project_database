--Query 8
CREATE OR REPLACE PROCEDURE showMultipleLeasers
AS
BEGIN
	-- Open the cursor and loop through the records
	FOR v_rec IN (select contactName from LeaseAgreement 
				group by contactName having count(contactName) > 1) LOOP       
	dbms_output.put_line(v_rec.contactName || ', ');
	END LOOP;
END;
/
show errors;
set serveroutput on;

exec showMultipleLeasers();

