--Query 1
select
	Rental_Properties.addressId,
	Rental_Properties.branchId,
	Rental_Properties.availDate,
	Rental_Properties.availability,
	Rental_Properties.numRooms,
	Rental_Properties.ownerId,
	Rental_Properties.propertyId,
	Rental_Properties.rent,
	Rental_Properties.supervisorId,
	Employees.name 'managerName'
from Rental_Properties
	left join Employees on Employees.branchId = Rental_Properties.branchId
where
	Rental_Properties.propertyId='AFB835O0SEAY0QC'
	AND Employees.job='manager'
