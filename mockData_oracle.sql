insert into Addresses Values ('pg9OfjROWwcdLqO', '500 El Camino Real', 'Santa Clara', 95053);
insert into Addresses Values ('AfMVWLdQF1mWDTa', '826 Willow Drive', 'Santa Clara', 01915);
insert into Addresses Values ('TNGXa7ekStP8Drs', '632 Ridge Avenue', 'Altamonte Springs', 32714);
insert into Addresses Values ('Lnv8gcebfmAsvSH', '495 Pleasant Street', 'Reno', 89523);
insert into Addresses Values ('9R9aYW6qxQnV6rz', '120 5th Street East', 'Oak Forest', 60452);

--Branch Generation
insert into Branches Values('Q101I4TIWOR1KPR', 'GreenField', 'pg9OfjROWwcdLqO', 2297733847);
insert into Branches Values('YCVQOAPJY7JTO23', 'Irvine Company', 'AfMVWLdQF1mWDTa', 5063861802);

--Employee Generation
insert into Employees Values('66WM81J1Q6FM6HZ', 'Mora Grana', 6360057378, TO_DATE('2003-09-17', 'YYYY-MM-DD'), 'manager', 'Q101I4TIWOR1KPR');
insert into Employees Values('2CAQ8I5U41ED21Q', 'Tyrone Ortiz', 4089542249, TO_DATE('2009-10-03', 'YYYY-MM-DD'), 'manager', 'YCVQOAPJY7JTO23');
insert into Employees Values('LVMHHMTKRBDPE7T', 'Kelle Culpepper', 0186062070, TO_DATE('2013-09-21', 'YYYY-MM-DD'), 'supervisor', 'YCVQOAPJY7JTO23');
insert into Employees Values('GHJR0M6Z78VUO7M', 'Cyndy Sarver', 5799065696, TO_DATE('2003-11-05', 'YYYY-MM-DD'), 'supervisor', 'Q101I4TIWOR1KPR');
insert into Employees Values('NMIL5PN5S2T0CBK', 'Keira Elms', 4269436850, TO_DATE('2002-01-24', 'YYYY-MM-DD'), 'supervisor', 'YCVQOAPJY7JTO23');
insert into Employees Values('5NOKG0X4PQ0Y2B1', 'Chau Barrs', 9781613821, TO_DATE('2008-02-05', 'YYYY-MM-DD'), 'supervisor', 'Q101I4TIWOR1KPR');
insert into Employees Values('9T5OFJAN9NCLLPV', 'Hedwig Rapier', 8938238033, TO_DATE('2002-02-05', 'YYYY-MM-DD'), 'supervisor', 'YCVQOAPJY7JTO23');
insert into Employees Values('7R5WE34XST4L5YA', 'Terrance Baier', 8328914419, TO_DATE('2002-08-07', 'YYYY-MM-DD'), 'supervisor', 'Q101I4TIWOR1KPR');
insert into Employees Values('VA14Q98LOVAN5SQ', 'Violet Kabel', 9475913402, TO_DATE('2010-07-23', 'YYYY-MM-DD'), 'staff', 'YCVQOAPJY7JTO23');
insert into Employees Values('SHWEW5M7Q9C5MH7', 'Sharell Haydel', 7499880823, TO_DATE('2005-03-25', 'YYYY-MM-DD'), 'staff', 'Q101I4TIWOR1KPR');
insert into Employees Values('SX28Z5Y0GTM85JX', 'Cassidy Amsden', 7681864779, TO_DATE('2008-08-23', 'YYYY-MM-DD'), 'staff', 'YCVQOAPJY7JTO23');
insert into Employees Values('6JDQSIGCWM4TMXO', 'Keenan Bjorklund', 9704439495, TO_DATE('2009-01-09', 'YYYY-MM-DD'), 'staff', 'Q101I4TIWOR1KPR');
insert into Employees Values('WF5Z5EWNA1BX7TR', 'Carmella Bryner', 7515268589, TO_DATE('2011-08-03', 'YYYY-MM-DD'), 'staff', 'YCVQOAPJY7JTO23');
insert into Employees Values('QXQTN6FN7M73791', 'Chandra Demayo', 1691862237, TO_DATE('2005-04-19', 'YYYY-MM-DD'), 'staff', 'Q101I4TIWOR1KPR');
insert into Employees Values('Y6544HLZRPW8ABP', 'Elton Hollowell', 0104117205, TO_DATE('2010-02-19', 'YYYY-MM-DD'), 'staff', 'YCVQOAPJY7JTO23');
insert into Employees Values('ATM5RV34SPE38NK', 'Yuonne Aumiller', 2068347355, TO_DATE('2002-02-26', 'YYYY-MM-DD'), 'staff', 'Q101I4TIWOR1KPR');
insert into Employees Values('XDQ76GJL0ANXGXZ', 'Lyle Fischbach', 7794987332, TO_DATE('2003-04-08', 'YYYY-MM-DD'), 'staff', 'YCVQOAPJY7JTO23');
insert into Employees Values('FZQFX4KE46Q5D7V', 'Kristeen Metzer', 7984289368, TO_DATE('2010-08-27', 'YYYY-MM-DD'), 'staff', 'Q101I4TIWOR1KPR');
insert into Employees Values('K1E3FPH1VEDRVCP', 'Theron Gibney', 3869005853, TO_DATE('2009-04-26', 'YYYY-MM-DD'), 'staff', 'YCVQOAPJY7JTO23');
insert into Employees Values('OXB2FT3CQ5C9JYH', 'Myrna Mccaster', 9286354897, TO_DATE('2001-12-01', 'YYYY-MM-DD'), 'staff', 'Q101I4TIWOR1KPR');
insert into Employees Values('ZMGXC5TAAXL4CDV', 'Marya Stpierre', 7085110120, TO_DATE('2008-09-10', 'YYYY-MM-DD'), 'staff', 'YCVQOAPJY7JTO23');
insert into Employees Values('X4HYXQCVGYUDGYM', 'Altha Amaya', 3110427794, TO_DATE('2014-11-02', 'YYYY-MM-DD'), 'staff', 'Q101I4TIWOR1KPR');
insert into Employees Values('A49DY6K6PPWDVOI', 'Kristan Petitt', 2286646162, TO_DATE('2004-09-14', 'YYYY-MM-DD'), 'staff', 'YCVQOAPJY7JTO23');
insert into Employees Values('5AC00DQLJCXMNVH', 'Louella Boardman', 1425242482, TO_DATE('2002-08-06', 'YYYY-MM-DD'), 'staff', 'Q101I4TIWOR1KPR');
insert into Employees Values('8KXPYB6UIK5WNT0', 'Josiah Hawkins', 1529612483, TO_DATE('2002-01-05', 'YYYY-MM-DD'), 'staff', 'YCVQOAPJY7JTO23');

--Property Owner Generation
insert into Property_Owners Values('V0W5CEU4C0UY40O', 'pg9OfjROWwcdLqO', 'Betsy Abramowitz', 4903818603, 601);
insert into Property_Owners Values('D4BJG0LAOAWH4C8', 'AfMVWLdQF1mWDTa', 'Chet Rojas', 4697615103, 083);
insert into Property_Owners Values('HD6KVBZT1L3CJGS', 'TNGXa7ekStP8Drs', 'Gene Messana', 1044319960, 933);
insert into Property_Owners Values('ST3QDSQE115LTPE', 'Lnv8gcebfmAsvSH', 'Ling Pressley', 7436033917, 964);
insert into Property_Owners Values('STO738IPZFURFVZ', '9R9aYW6qxQnV6rz', 'Marylyn Rusher', 3807380290, 744);

--Rental Property Generation
insert into Rental_Properties Values('DXEUO27JIJFZGAA', 'V0W5CEU4C0UY40O', 'pg9OfjROWwcdLqO', 'Q101I4TIWOR1KPR', 6, 584, 1, TO_DATE('2007-02-16', 'YYYY-MM-DD'), 'LVMHHMTKRBDPE7T');
insert into Rental_Properties Values('C23H0964JNW26SV', 'D4BJG0LAOAWH4C8', 'AfMVWLdQF1mWDTa', 'Q101I4TIWOR1KPR', 0, 180, 1, TO_DATE('2003-03-17', 'YYYY-MM-DD'), 'GHJR0M6Z78VUO7M');
insert into Rental_Properties Values('FRXRPJKR17NU391', 'HD6KVBZT1L3CJGS', 'TNGXa7ekStP8Drs', 'Q101I4TIWOR1KPR', 8, 640, 1, TO_DATE('2007-10-19', 'YYYY-MM-DD'), 'NMIL5PN5S2T0CBK');
insert into Rental_Properties Values('R2IQYSYN3HI5GOR', 'ST3QDSQE115LTPE', 'Lnv8gcebfmAsvSH', 'YCVQOAPJY7JTO23', 9, 071, 1, TO_DATE('2006-12-08', 'YYYY-MM-DD'), '5NOKG0X4PQ0Y2B1');
insert into Rental_Properties Values('F9SQG4FF81JA1U1', 'STO738IPZFURFVZ', '9R9aYW6qxQnV6rz', 'YCVQOAPJY7JTO23', 3, 923, 1, TO_DATE('2002-03-02', 'YYYY-MM-DD'), '9T5OFJAN9NCLLPV');
insert into Rental_Properties Values('GEOMKPBUJTT5MLF', 'V0W5CEU4C0UY40O', 'pg9OfjROWwcdLqO', 'YCVQOAPJY7JTO23', 7, 566, 1, TO_DATE('2005-12-02', 'YYYY-MM-DD'), '7R5WE34XST4L5YA');

--Lease Agreement Generation
insert into LeaseAgreement Values('N77N3NWC0KBT304', 'DXEUO27JIJFZGAA', 5056704480, 6026421395, 'Hedwig Rapier', 6867305357, TO_DATE('2004-08-08', 'YYYY-MM-DD'), TO_DATE('2005-07-01', 'YYYY-MM-DD'), 0625, 482);
insert into LeaseAgreement Values('4KUNZY5XOBMTYZJ', 'C23H0964JNW26SV', 5171207518, 8049543495, 'Marya Stpierre', 9702581343, TO_DATE('2004-08-09', 'YYYY-MM-DD'), TO_DATE('2005-07-02', 'YYYY-MM-DD'), 7536, 591);
insert into LeaseAgreement Values('3KNNZY5XOBMTYZH', 'R2IQYSYN3HI5GOR', 8082229885, 8083714311, 'George Smith', 8086431111, TO_DATE('2004-08-10', 'YYYY-MM-DD'), TO_DATE('2005-07-03', 'YYYY-MM-DD'), 10000, 600);
insert into LeaseAgreement Values('4KUNZY5XOBMTYZH', 'FRXRPJKR17NU391', 8082229885, 8083714311, 'George Smith', 8086431111, TO_DATE('2004-08-11', 'YYYY-MM-DD'), TO_DATE('2005-07-04', 'YYYY-MM-DD'), 10000, 600);
