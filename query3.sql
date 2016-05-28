select
	Rental_Properties.propertyId,
	Addresses.street,
	Addresses.city,
	Addresses.zip
from Rental_Properties
	left join Property_Owners on Property_Owners.id = Rental_Properties.ownerId
	left join Addresses on Addresses.id = Rental_Properties.addressId
where
	Property_Owners.name = 'Chet Rojas'
	AND Rental_Properties.branchId = (
		select 
			Branches.id 
		from 
			Branches
		where 
			Branches.name = 'GreenField'
	);