
--test constraint 3 max properties
insert into Rental_Properties Values('DXEUO27JIJFZGAA', 'V0W5CEU4C0UY40O', 'pg9OfjROWwcdLqO', 'Q101I4TIWOR1KPR', 6, 584, 0, TO_DATE('2007-02-16', 'YYYY-MM-DD'), 'LVMHHMTKRBDPE7T');
insert into Rental_Properties Values('C23H0964JNW26SV', 'D4BJG0LAOAWH4C8', 'AfMVWLdQF1mWDTa', 'Q101I4TIWOR1KPR', 0, 180, 1, TO_DATE('2003-03-17', 'YYYY-MM-DD'), 'LVMHHMTKRBDPE7T');
insert into Rental_Properties Values('FRXRPJKR17NU391', 'HD6KVBZT1L3CJGS', 'TNGXa7ekStP8Drs', 'Q101I4TIWOR1KPR', 8, 640, 0, TO_DATE('2007-10-19', 'YYYY-MM-DD'), 'LVMHHMTKRBDPE7T');
insert into Rental_Properties Values('R2IQYSYN3HI5GOR', 'ST3QDSQE115LTPE', 'Lnv8gcebfmAsvSH', 'YCVQOAPJY7JTO23', 9, 071, 1, TO_DATE('2006-12-08', 'YYYY-MM-DD'), 'LVMHHMTKRBDPE7T');
insert into Rental_Properties Values('F9SQG4FF81JA1U1', 'STO738IPZFURFVZ', '9R9aYW6qxQnV6rz', 'YCVQOAPJY7JTO23', 3, 923, 0, TO_DATE('2002-03-02', 'YYYY-MM-DD'), '9T5OFJAN9NCLLPV');
insert into Rental_Properties Values('GEOMKPBUJTT5MLF', 'V0W5CEU4C0UY40O', 'pg9OfjROWwcdLqO', 'YCVQOAPJY7JTO23', 7, 566, 1, TO_DATE('2005-12-02', 'YYYY-MM-DD'), '7R5WE34XST4L5YA');

--test constraint 1 supervisor per branch
insert into Employees Values('66WM81J1Q6FM6HZ', 'Mora Grana', 6360057378, TO_DATE('2003-09-17', 'YYYY-MM-DD'), 'manager', 'Q101I4TIWOR1KPR');
insert into Employees Values('2CAQ8I5U41ED21Q', 'Tyrone Ortiz', 4089542249, TO_DATE('2009-10-03', 'YYYY-MM-DD'), 'manager', 'Q101I4TIWOR1KPR');

--test constraint min 6 month max 1 year
insert into LeaseAgreement Values('N77N3NWC0KBT304', 'DXEUO27JIJFZGAA', 5056704480, 6026421395, 'Hedwig Rapier', 6867305357, TO_DATE('2016-01-01', 'YYYY-MM-DD'), TO_DATE('2016-05-01', 'YYYY-MM-DD'), 0625, 482);
insert into LeaseAgreement Values('4KUNZY5XOBMTYZJ', 'C23H0964JNW26SV', 5171207518, 8049543495, 'Marya Stpierre', 9702581343, TO_DATE('2016-01-01', 'YYYY-MM-DD'), TO_DATE('2017-02-01', 'YYYY-MM-DD'), 7536, 591);


select * from Employees;
select * from branches;
select * from addresses;
select * from Rental_Properties;
select * from LeaseAgreement;
select * from property_owners;