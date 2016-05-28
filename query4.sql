select
	Addresses.street,
	Addresses.city,
	Addresses.zip,
	Rental_Properties.numRooms,
	Rental_Properties.rent
from
	Rental_Properties
	left join Addresses on Rental_Properties.addressId = Addresses.id
where
	Addresses.city = 'Reno'
	AND Rental_Properties.numRooms = '4'
	AND Rental_Properties.availability = 1
	AND Rental_Properties.rent > 300
	AND Rental_Properties.rent <= 500;