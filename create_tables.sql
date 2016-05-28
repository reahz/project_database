DROP TABLE LeaseAgreement;
DROP TABLE Rental_Properties;
DROP TABLE Property_Owners;
DROP TABLE Employees;
DROP TABLE Branches;
DROP TABLE Addresses;

CREATE TABLE Addresses(
	id 			CHAR(15) NOT NULL PRIMARY KEY,
	street		VARCHAR(30) NOT NULL,
	city 		VARCHAR(30) NOT NULL,
	zip 		NUMBER(5) NOT NULL
);

CREATE TABLE Branches (
	id 			CHAR(15) NOT NULL PRIMARY KEY,
	name		CHAR(15) NOT NULL,
	addressId	CHAR(15) ,
	phone		NUMBER(10) NOT NULL,
	FOREIGN KEY (addressId) REFERENCES Addresses(id)
);

CREATE TABLE Employees (
	id 			CHAR(15) NOT NULL PRIMARY KEY,
	name		VARCHAR(30) NOT NULL,
	phone		NUMBER(10),
	startDate	DATE NOT NULL,
	job			VARCHAR(15) NOT NULL,
	branchId	CHAR(15),
	FOREIGN KEY (branchId) REFERENCES Branches(id)
);

CREATE TABLE Property_Owners (
	id 			CHAR(15) NOT NULL PRIMARY KEY,
	addressId	CHAR(15),
	name		VARCHAR(30),
	phone		NUMBER(10),
	fees		NUMERIC(5,2),
	FOREIGN KEY (addressId) REFERENCES Addresses(id)
);

CREATE TABLE Rental_Properties (
	propertyId	 CHAR(15) NOT NULL PRIMARY KEY,
	ownerId		 CHAR(15),
	addressId 	 CHAR(15),
	branchId char(15),
	numRooms	 NUMBER(2) NOT NULL,
	rent 		 NUMERIC(7,2) NOT NULL,
	availability INTEGER NOT NULL,
	availDate	 DATE NOT NULL,
	supervisorId CHAR(15),
	FOREIGN KEY (ownerId) REFERENCES Property_Owners(id),
	FOREIGN KEY (addressId) REFERENCES Addresses(id),
	FOREIGN KEY (supervisorId) REFERENCES Employees(id),
	FOREIGN KEY (branchId) REFERENCES Branches(id)
);

CREATE TABLE LeaseAgreement (
	leaseId		 CHAR(15) NOT NULL PRIMARY KEY,
	propertyId 	 CHAR(15) ,
	homePhone	 NUMBER(10),
	workPhone	 NUMBER(10),
	contactName	 VARCHAR(30),
	contactPhone NUMBER(10),
	startDate	 DATE,
	endDate		 DATE,
	totalRent	 NUMERIC(8, 2),
	deposit		 NUMERIC(8, 2),
	FOREIGN KEY (propertyId) REFERENCES Rental_Properties(propertyId)
);
