--Query 1
set serveroutput on;
CREATE or REPLACE PROCEDURE getPropertyByBranchName(branchNameParam IN Rental_Properties.propertyId%type)
AS
	CURSOR v_cur IS(
		select
			Rental_Properties.propertyId,
			Employees.name
		from Rental_Properties
			left join Employees on Employees.branchId = Rental_Properties.branchId
			left join Branches on Branches.id = Rental_Properties.branchId
		where
			Branches.name = branchNameParam
			AND Employees.job='manager');
	v_ref v_cur%rowType;
BEGIN
	OPEN v_cur;
	LOOP
		FETCH v_cur INTO v_ref;
		EXIT WHEN v_cur%NOTFOUND;
		dbms_output.put_line('Manager Name: ' || v_ref.name || ', propertyId:' || v_ref.propertyId);
	END LOOP;
	CLOSE v_cur;
END;
/
show errors;

exec getPropertyByBranchName('GreenField')
