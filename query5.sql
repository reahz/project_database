set serveroutput on;
CREATE or REPLACE PROCEDURE getBranchProperties
AS
	CURSOR v_cur IS(
		select
			Branches.id,
			Branches.name,
			count(*) as count
		from
			Branches
			left join Rental_Properties on Rental_Properties.branchId = Branches.id
		group by Branches.id, Branches.name
	);
	v_ref v_cur%rowType;
BEGIN
	OPEN v_cur;
	LOOP
		FETCH v_cur INTO v_ref;
		EXIT WHEN v_cur%NOTFOUND;
		dbms_output.put_line('Branch: ' || v_ref.name || ', count: ' || v_ref.count);
	END LOOP;
	CLOSE v_cur;
END;
/
show errors;

exec getBranchProperties();
