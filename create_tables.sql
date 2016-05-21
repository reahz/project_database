CREATE TABLE Addresses(
	id 			CHAR(15) NOT NULL PRIMARY KEY,
	street		VARCHAR(15) NOT NULL,
	city 		VARCHAR(15) NOT NULL,
	zip 		NUMBER(5) NOT NULL
);

CREATE TABLE Branches (
	id 			CHAR(15) NOT NULL PRIMARY KEY,
	addressId	CHAR(15) ,
	phone		NUMBER(10) NOT NULL,
	FOREIGN KEY (addressId) REFERENCES Addresses(id)
);

CREATE TABLE Employees (
	id 			CHAR(15) NOT NULL PRIMARY KEY,
	branchId	CHAR(15),
	name		VARCHAR(15) NOT NULL,
	phone		NUMBER(10),
	startDate	DATE NOT NULL,
	job			VARCHAR(15) NOT NULL,
	FOREIGN KEY (branchId) REFERENCES Branches(id)
);

CREATE TABLE Property_Owners (
	id 			CHAR(15) NOT NULL PRIMARY KEY,
	addressId	CHAR(15),
	name		VARCHAR(15),
	phone		NUMBER(10),
	fees		NUMERIC(5,2),
	FOREIGN KEY (addressId) REFERENCES Addresses(id)
);

CREATE TABLE Rental_Properties (
	propertyId	 CHAR(15) NOT NULL PRIMARY KEY,
	ownerId		 CHAR(15),
	addressId 	 CHAR(15),
	numRooms	 NUMBER(2) NOT NULL,
	rent 		 NUMERIC(7,2) NOT NULL,
	status 		 INTEGER NOT NULL,
	availDate	 DATE NOT NULL,
	supervisorId CHAR(15),
	FOREIGN KEY (ownerId) REFERENCES Property_Owners(id),
	FOREIGN KEY (addressId) REFERENCES Addresses(id),
	FOREIGN KEY (supervisorId) REFERENCES Employees(id)
);

CREATE TABLE LeaseAgreement (
	leaseId		 CHAR(15) NOT NULL PRIMARY KEY,
	propertyId 	 CHAR(15) ,
	homePhone	 NUMBER(10),
	workPhone	 NUMBER(10),
	contactName	 VARCHAR(15),
	contactPhone NUMBER(10),
	startDate	 DATE,
	endDate		 DATE,
	totalRent	 NUMERIC(8, 2),
	deposit		 NUMERIC(4, 2),
	FOREIGN KEY (propertyId) REFERENCES Rental_Properties(propertyId)
);