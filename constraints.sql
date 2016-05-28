-- A supervisor cannot supervise more than three rental properties at a time

CREATE OR REPLACE TRIGGER supervise_3
BEFORE INSERT OR UPDATE
	ON Rental_Properties
	FOR EACH ROW
	DECLARE total number(1);
BEGIN
	SELECT COUNT(*) INTO total 
	FROM Employees, Rental_Properties 
	WHERE Employees.id = Rental_Properties.supervisorId; 

	IF (total > 3) THEN
		raise_application_error (1, 'A supervisor can only supervise 3 rental properties at a time');
	END IF
END supervise_3;
/

-- Only one manager per branch
CREATE OR REPLACE TRIGGER one_manager_per_branch
BEFORE INSERT OR UPDATE
	ON Employees
	FOR EACH ROW
	DECLARE total number(1);
BEGIN
	SELECT COUNT(*) INTO total 
	FROM Employees, Branches
	WHERE Employees.job = 'manager' AND  Branches.id = Employees.branchId;

	IF (total > 1) THEN
		raise_application_error (2, 'There can only be one manager per branch');
	END IF
END one_manager_per_branch;
/

-- A lease agreement should be for a minimum of six months 
	--and a maximum of one year. The rent for a six-month lease is 10% more than 
	--the regular rent for that property.  
CREATE OR REPLACE TRIGGER 
BEFORE INSERT 
	ON LeaseAgreement
	FOR EACH ROW
BEGIN
	IF (:new.endDate - :new.startDate < 183)
		raise_application_error (3, 'Minimum lease is 6 months');
	ELSIF (:new.endDate - :new.startDate > 365)
		raise_application_error(4, 'Maximum lease is for 1 year');
	ELS

	END IF


END change_status;
/



-- When a lease agreement is created, the status for the property should be
	-- changed to leased (or not_available). 
CREATE OR REPLACE TRIGGER change_status
AFTER INSERT 
	ON LeaseAgreement
	FOR EACH ROW
BEGIN
	UPDATE Rental_Properties
	SET availability = 0; 
	WHERE Rental_Properties.propertyId = :new.propertyId;
END change_status;
/


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






