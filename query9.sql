--Query 9
CREATE OR REPLACE PROCEDURE rentAverageIn(city_in IN Addresses.city%type)
AS
BEGIN
	-- Open the cursor and loop through the records
	FOR v_rec IN (select avg(rent) as rentAverage 
					from Rental_Properties, Addresses 
					where Rental_Properties.addressId = Addresses.id 
					and city = city_in) LOOP       
	dbms_output.put_line('rent average: ' || v_rec.rentAverage);
	END LOOP;
END;
/
show errors;
set serveroutput on;

exec rentAverageIn('Santa Clara');
