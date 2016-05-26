select 
	Employees.name,
	Employees.phone,
	Addresses.street,
	Addresses.city,
	Addresses.zip
from Rental_Properties
	left join Employees on Rental_Properties.supervisorId = Employees.id
	left join Addresses on Rental_Properties.addressId = Addresses.id