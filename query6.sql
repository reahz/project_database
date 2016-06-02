--Query 6

CREATE OR REPLACE PROCEDURE newLease (leaseId_in IN LeaseAgreement.leaseId%type, propertyId_in IN LeaseAgreement.propertyId%type, homePhone_in IN LeaseAgreement.homePhone%type, workPhone_in IN LeaseAgreement.workPhone%type, contactName_in IN LeaseAgreement.contactName%type, contactPhone_in IN LeaseAgreement.contactPhone%type, startDate_in IN LeaseAgreement.startDate%type, endDate_in IN LeaseAgreement.endDate%type, totalRent_in IN LeaseAgreement.totalRent%type, deposit_in IN LeaseAgreement.deposit%type) 
AS
BEGIN
	insert into LeaseAgreement Values(leaseId_in, propertyId_in, homePhone_in, workPhone_in, contactName_in, contactPhone_in, startDate_in, endDate_in, totalRent_in, deposit_in);
END;
/
show errors;

exec newLease('4KUNZY5XOBMTYZH', 'FRXRPJKR17NU391', 8082229885, 8083714311, 'George Smith', 8086431111, TO_DATE('2016-09-08', 'YYYY-MM-DD'), TO_DATE('2017-07-15', 'YYYY-MM-DD'), 10000, 600);