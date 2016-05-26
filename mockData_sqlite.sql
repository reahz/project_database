delete from Rental_Properties;
delete from Property_Owners;
delete from LeaseAgreement;
delete from Employees;
delete from Branches;
delete from Addresses;

insert into Addresses Values ('pg9OfjROWwcdLqO', '500 El Camino Real', 'Santa Clara', 95053);
insert into Addresses Values ('AfMVWLdQF1mWDTa', '826 Willow Drive', 'Beverly', 01915);
insert into Addresses Values ('TNGXa7ekStP8Drs', '632 Ridge Avenue', 'Altamonte Springs', 32714);
insert into Addresses Values ('Lnv8gcebfmAsvSH', '495 Pleasant Street', 'Reno', 89523);
insert into Addresses Values ('9R9aYW6qxQnV6rz', '120 5th Street East', 'Oak Forest', 60452);

  --Branch Generation
  insert into Branches Values('KF5HV5Y6M41OGEZ', 'pg9OfjROWwcdLqO', 0010991300);
  insert into Branches Values('JEC94IAGKKTA0RQ', 'AfMVWLdQF1mWDTa', 3237048588);

  --Employee Generation
  insert into Employees Values('LLPDEBS430J4FB9', 'Mora Grana', 7479128129, 2005-05-22, 'manager', 'KF5HV5Y6M41OGEZ');
  insert into Employees Values('OTEV7NQNB7UVB0B', 'Tyrone Ortiz', 1115161965, 2009-01-13, 'manager', 'JEC94IAGKKTA0RQ');
  insert into Employees Values('ADBF2OWP17PAIFH', 'Kelle Culpepper', 5946180867, 2003-01-02, 'supervisor', 'JEC94IAGKKTA0RQ');
  insert into Employees Values('794ETDDAUKGXRNS', 'Cyndy Sarver', 2384621359, 2013-03-24, 'supervisor', 'KF5HV5Y6M41OGEZ');
  insert into Employees Values('FCBCM3TA6762M9D', 'Keira Elms', 0318322165, 2002-09-12, 'supervisor', 'JEC94IAGKKTA0RQ');
  insert into Employees Values('MDTPYX4H467GK2Z', 'Chau Barrs', 6192510322, 2002-12-26, 'supervisor', 'KF5HV5Y6M41OGEZ');
  insert into Employees Values('PP69MZR11GM81NW', 'Hedwig Rapier', 6254318747, 2006-10-05, 'supervisor', 'JEC94IAGKKTA0RQ');
  insert into Employees Values('BL8E18U050K4ZT1', 'Terrance Baier', 1469934047, 2009-02-03, 'supervisor', 'KF5HV5Y6M41OGEZ');
  insert into Employees Values('1L6WK6E7PMPE1D9', 'Violet Kabel', 5198641942, 2001-12-09, 'staff', 'JEC94IAGKKTA0RQ');
  insert into Employees Values('2X7HQR8INXC77CD', 'Sharell Haydel', 3804717174, 2010-06-26, 'staff', 'KF5HV5Y6M41OGEZ');
  insert into Employees Values('2SLYXKOLJ4R0GXY', 'Cassidy Amsden', 5641712001, 2007-09-07, 'staff', 'JEC94IAGKKTA0RQ');
  insert into Employees Values('K6WLEM6C350KQZX', 'Keenan Bjorklund', 8509755160, 2013-10-27, 'staff', 'KF5HV5Y6M41OGEZ');
  insert into Employees Values('MMNALCGHPA9GPQ5', 'Carmella Bryner', 0410546718, 2013-05-17, 'staff', 'JEC94IAGKKTA0RQ');
  insert into Employees Values('YWZ03X4I5QSBCIN', 'Chandra Demayo', 0994759352, 2013-04-23, 'staff', 'KF5HV5Y6M41OGEZ');
  insert into Employees Values('ITOO2TBNZF2CKPO', 'Elton Hollowell', 7016170002, 2009-06-05, 'staff', 'JEC94IAGKKTA0RQ');
  insert into Employees Values('H2MT4UACXXDOR8T', 'Yuonne Aumiller', 1054822042, 2001-11-09, 'staff', 'KF5HV5Y6M41OGEZ');
  insert into Employees Values('CAK72DP4T7C3P48', 'Lyle Fischbach', 8243501616, 2014-04-19, 'staff', 'JEC94IAGKKTA0RQ');
  insert into Employees Values('0DBQCAE1MTK1SCP', 'Kristeen Metzer', 2500733403, 2011-02-07, 'staff', 'KF5HV5Y6M41OGEZ');
  insert into Employees Values('447FQ7KJ4ZUGSD9', 'Theron Gibney', 3870186948, 2004-12-01, 'staff', 'JEC94IAGKKTA0RQ');
  insert into Employees Values('LDI870VJEE148VX', 'Myrna Mccaster', 3016294407, 2014-01-17, 'staff', 'KF5HV5Y6M41OGEZ');
  insert into Employees Values('KA3Y9XK65SE2MJY', 'Marya Stpierre', 1075623973, 2013-01-14, 'staff', 'JEC94IAGKKTA0RQ');
  insert into Employees Values('T7DNCUWZ1YCAX7P', 'Altha Amaya', 4281123021, 2006-09-17, 'staff', 'KF5HV5Y6M41OGEZ');
  insert into Employees Values('D4MHW0Z7VQKQ33L', 'Kristan Petitt', 7937045546, 2003-02-23, 'staff', 'JEC94IAGKKTA0RQ');
  insert into Employees Values('WR8OYCK508U14OD', 'Louella Boardman', 5423458090, 2010-09-15, 'staff', 'KF5HV5Y6M41OGEZ');
  insert into Employees Values('G4U0O6B2J5OB87L', 'Josiah Hawkins', 3844252852, 2011-05-14, 'staff', 'JEC94IAGKKTA0RQ');

  --Property Owner Generation
  insert into Property_Owners Values('LMM35DDMKJJ88W5', 'pg9OfjROWwcdLqO', 'Betsy Abramowitz', 0547438665, 633);
  insert into Property_Owners Values('AF59F0B30PE817M', 'AfMVWLdQF1mWDTa', 'Chet Rojas', 1173791707, 147);
  insert into Property_Owners Values('HA9G2MGWXYMU7FE', 'TNGXa7ekStP8Drs', 'Gene Messana', 2946785684, 786);
  insert into Property_Owners Values('ZMR2DZ8PVYBEI8B', 'Lnv8gcebfmAsvSH', 'Ling Pressley', 2845716519, 440);
  insert into Property_Owners Values('LKKNKHR34GMFWXQ', '9R9aYW6qxQnV6rz', 'Marylyn Rusher', 9128586209, 230);

  --Rental Property Generation
  insert into Rental_Properties Values('AFB835O0SEAY0QC', 'LMM35DDMKJJ88W5', 'pg9OfjROWwcdLqO', 3, 267, 0, 2014-03-25, 'ADBF2OWP17PAIFH');
  insert into Rental_Properties Values('UFUNJQC3DFAKPMF', 'AF59F0B30PE817M', 'AfMVWLdQF1mWDTa', 6, 424, 1, 2006-07-12, '794ETDDAUKGXRNS');
  insert into Rental_Properties Values('560GHS95ND6XVH0', 'HA9G2MGWXYMU7FE', 'TNGXa7ekStP8Drs', 5, 632, 0, 2011-04-01, 'FCBCM3TA6762M9D');
  insert into Rental_Properties Values('6HK9LLA5DYNWPVI', 'ZMR2DZ8PVYBEI8B', 'Lnv8gcebfmAsvSH', 4, 365, 1, 2010-08-19, 'MDTPYX4H467GK2Z');
  insert into Rental_Properties Values('Q4EG9XS0YE5U2HU', 'LKKNKHR34GMFWXQ', '9R9aYW6qxQnV6rz', 1, 883, 0, 2010-01-09, 'PP69MZR11GM81NW');
  insert into Rental_Properties Values('GL4MYI691UBR7VX', 'LMM35DDMKJJ88W5', 'pg9OfjROWwcdLqO', 2, 641, 1, 2012-08-25, 'BL8E18U050K4ZT1');

  --Lease Agreement Generation
  insert into LeaseAgreement Values('U87IY65AXFAM69O', 'AFB835O0SEAY0QC', 8799329806, 8382645615, 'Marylyn Rusher', 9980130551, 2003-02-18, 2007-02-02, 2910, 063);
  insert into LeaseAgreement Values('JTLQLIY0O4FTFYT', 'UFUNJQC3DFAKPMF', 7032366225, 9301464106, 'Hedwig Rapier', 2765300832, 2006-09-21, 2005-01-04, 6316, 736);
