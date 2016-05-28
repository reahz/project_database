--Query 8
select contactName from LeaseAgreement group by contactName having (count(contactName) > 1);