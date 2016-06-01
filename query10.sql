--Query 10
CREATE OR REPLACE PROCEDURE showExpiring
AS
BEGIN
	FOR v_rec IN (select LeaseAgreement.contactName, Addresses.street, Addresses.city, Addresses.zip 
					as from LeaseAgreement, Addresses, Rental_Properties 
					where (sysdate - endDate) < 60 and LeaseAgreement.propertyId = Rental_Properties.propertyId 
					and Rental_Properties.addressId = Addresses.id) LOOP       
	dbms_output.put_line('Contact Name: ' || v_rec.contactName);
	dbms_output.put_line('Address: ' || v_rec.street || ', ' || v_rec.city || ', ' || v_rec.zip);
	END LOOP;
END;
/
show errors;
set serveroutput on;

exec showExpiring;