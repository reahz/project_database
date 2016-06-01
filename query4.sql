set serveroutput on;
CREATE or REPLACE PROCEDURE getPropertiesByCriteria(
	cityParam IN Addresses.city%type,
	numRoomsParam IN Rental_Properties.numRooms%type,
	rentHighParam IN Rental_Properties.rent%type,
	rentLowParam IN Rental_Properties.rent%type
	)
AS
	CURSOR v_cur IS(
		select
			Rental_Properties.propertyId,
			Addresses.street,
			Addresses.city,
			Addresses.zip,
			Rental_Properties.numRooms,
			Rental_Properties.rent
		from
			Rental_Properties
			left join Addresses on Rental_Properties.addressId = Addresses.id
		where
			Addresses.city = cityParam
			AND Rental_Properties.numRooms = numRoomsParam
			AND Rental_Properties.availability = 1
			AND Rental_Properties.rent >= rentLowParam
			AND Rental_Properties.rent <= rentHighParam
	);
	v_ref v_cur%rowType;
BEGIN
	OPEN v_cur;
	LOOP
		FETCH v_cur INTO v_ref;
		EXIT WHEN v_cur%NOTFOUND;
		dbms_output.put_line('PropertyId: ' ||
			v_ref.propertyId || ', Address: ' || v_ref.street || ' ' || v_ref.city ||
			', ' || v_ref.zip);
	END LOOP;
	CLOSE v_cur;
END;
/
show errors;
exec getPropertiesByCriteria('Reno', '3', 200, 500);
