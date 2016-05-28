--Query 9
select avg(rent) as rentAverage from Rental_Properties, Addresses where Rental_Properties.addressId = Addresses.id and city = 'Santa Clara';
