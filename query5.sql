select 
	Branches.name,
	count(*) 'count'
from
	Branches
	left join Rental_Properties on Rental_Properties.branchId = Branches.id
group by Branches.id
