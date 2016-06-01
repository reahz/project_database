CREATE OR REPLACE TRIGGER three_max_properties
FOR INSERT
ON Rental_Properties
COMPOUND TRIGGER

 /* Declaration Section*/
v_MAX_PROPERTIES CONSTANT INTEGER := 3;
     v_CurNum INTEGER := 1;	
	 v_rental CHAR(15);

 --ROW level
BEFORE EACH ROW IS
BEGIN
	v_rental := :NEW.supervisorId;
END BEFORE EACH ROW;

 --Statement level
AFTER STATEMENT IS
BEGIN
SELECT COUNT(*) INTO v_CurNum FROM Rental_Properties 
		WHERE supervisorId = v_rental Group by supervisorId;
		
		IF v_CurNum  > v_MAX_PROPERTIES THEN
			RAISE_APPLICATION_ERROR(-20000,'Only 3 properties per supervisor');
		END IF;
END AFTER STATEMENT;
END;
/
show errors;

CREATE OR REPLACE TRIGGER one_manager_per_branch
FOR INSERT
ON Employees
COMPOUND TRIGGER

 /* Declaration Section*/
v_MAX_MANAGER CONSTANT INTEGER := 1;
     v_CurNum INTEGER := 1;	
	 v_branch CHAR(15);

 --ROW level
BEFORE EACH ROW IS
BEGIN
	v_branch := :NEW.branchId;
END BEFORE EACH ROW;

 --Statement level
AFTER STATEMENT IS
BEGIN
SELECT COUNT(*) INTO v_CurNum FROM Employees 
		WHERE  branchId = v_branch and job = 'manager' Group by branchId;
		
		IF v_CurNum  > v_MAX_MANAGER THEN
			RAISE_APPLICATION_ERROR(-20000,'Only 1 manager per branch');
		END IF;
END AFTER STATEMENT;
END;
/
show errors;

-- A lease agreement should be for a minimum of six months 
	--and a maximum of one year. The rent for a six-month lease is 10% more than 
	--the regular rent for that property.  
CREATE OR REPLACE TRIGGER lease_term_constraint
BEFORE INSERT 
	ON LeaseAgreement
	FOR EACH ROW
BEGIN
	IF :new.endDate - :new.startDate < 183 THEN
		raise_application_error (-20001, 'Minimum lease is 6 months');
	ELSIF :new.endDate - :new.startDate > 365 THEN
		raise_application_error(-20002, 'Maximum lease is for 1 year');
	ELSEIF :new.endDate - :new.startDate = 183 THEN
		:new.rent = :new.rent*1.1;
	END IF;
END lease_term_constraint;
/
show errors;

-- When a lease agreement is created, the status for the property should be
	-- changed to leased (or not_available). 
CREATE OR REPLACE TRIGGER change_avail
AFTER INSERT 
	ON LeaseAgreement
	FOR EACH ROW
BEGIN
	UPDATE Rental_Properties
	SET availability = 0
	WHERE Rental_Properties.propertyId = :new.propertyId;
END change_avail;
/
show errors;

-- With every new lease, a 10% increase in rent 
	--should be added to the rent from the previous lease
CREATE OR REPLACE TRIGGER ten_percent_increase
AFTER INSERT 
	ON LeaseAgreement
	FOR EACH ROW
BEGIN
	UPDATE Rental_Properties
	SET rent = rent*1.1
	WHERE Rental_Properties.propertyId = :new.propertyId;
END ten_percent_increase;
/
show errors;






