--Query 7

CREATE OR REPLACE PROCEDURE showLeaseFor(name_in IN LeaseAgreement.contactName%type)
AS
BEGIN
	-- Open the cursor and loop through the records
	FOR v_rec IN (select * from LeaseAgreement where contactName = name_in) LOOP       
	dbms_output.put_line('leaseId = ' || v_rec.leaseId || ', propertyId = ' || v_rec.propertyId || ', name = ' || v_rec.contactName);
	END LOOP;
END;
/
show errors;
set serveroutput on;
exec showLeaseFor('George Smith');