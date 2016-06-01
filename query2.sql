set serveroutput on;
CREATE or REPLACE PROCEDURE getSupervisorsAndProperties
AS
	CURSOR v_cur IS(
		select
			Employees.name,
			Employees.phone,
			Rental_Properties.propertyId,
			Addresses.street,
			Addresses.city,
			Addresses.zip
		from Rental_Properties
			left join Employees on Rental_Properties.supervisorId = Employees.id
			left join Addresses on Rental_Properties.addressId = Addresses.id
		);
	v_ref v_cur%rowType;
BEGIN
	OPEN v_cur;
	LOOP
		FETCH v_cur INTO v_ref;
		EXIT WHEN v_cur%NOTFOUND;
		dbms_output.put_line('Supervisor: ' || v_ref.name || ', propertyId:' ||
			v_ref.propertyId || ', Address: ' || v_ref.street || ' ' || v_ref.city ||
			', ' || v_ref.zip);
	END LOOP;
	CLOSE v_cur;
END;
/
show errors;

exec getSupervisorsAndProperties();
