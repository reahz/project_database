set serveroutput on;
CREATE or REPLACE PROCEDURE getPropertyByOwnerAndBranch(
	ownerNameParam IN Property_Owners.name%type,
	branchNameParam IN Branches.name%type
	)
AS
	CURSOR v_cur IS(
		select
			Rental_Properties.propertyId,
			Addresses.street,
			Addresses.city,
			Addresses.zip
		from Rental_Properties
			left join Property_Owners on Property_Owners.id = Rental_Properties.ownerId
			left join Addresses on Addresses.id = Rental_Properties.addressId
		where
			Property_Owners.name = ownerNameParam
			AND Rental_Properties.branchId =
			(
				select
					Branches.id
				from
					Branches
				where
					Branches.name = branchNameParam
			)
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
exec getPropertyByOwnerAndBranch('Chet Rojas', 'GreenField');
