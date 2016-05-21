CREATE TABLE Adresses (
	id 			CHAR(15) NOT NULL PRIMARY KEY,
	street		VARCHAR(15) NOT NULL,
	city 		VARCHAR(15) NOT NULL,
	zip 		NUMBER(5) NOT NULL
);

CREATE TABLE Branches (
	id 			CHAR(15) NOT NULL PRIMARY KEY,
	addressId	CHAR(15) FOREIGN KEY REFERENCES Adresses(id),
	phone		NUMBER(10) NOT NULL
);

CREATE TABLE Employees (
	id 			CHAR(15) NOT NULL PRIMARY KEY,
	branchId	CHAR(15) FOREIGN KEY REFERENCES Branches(id),
	name		VARCHAR(15) NOT NULL,
	phone		NUMBER(10),
	startDate	DATE NOT NULL,
	job			VARCHAR(15) NOT NULL
);


CREATE TABLE Property_Owners (
	id 			CHAR(15) NOT NULL PRIMARY KEY,
	addressId	CHAR(15) FOREIGN KEY REFERENCES Adresses(id),
	name		VARCHAR(15),
	phone		NUMBER(10),
	fees		NUMERIC(5,2)
);

CREATE TABLE Rental_Properties (
	propertyId	 CHAR(15) NOT NULL PRIMARY KEY,
	ownerId		 CHAR(15) FOREIGN KEY REFERENCES Property_Owners(id),
	address 	 CHAR(15) FOREIGN KEY REFERENCES Adresses(id),
	numRooms	 NUMBER(2) NOT NULL,
	rent 		 NUMERIC(7,2) NOT NULL,
	status 		 BOOLEAN NOT NULL,
	availDate	 DATE NOT NULL,
	supervisorId CHAR(15) FOREIGN KEY REFERENCES Employees(id)
);

CREATE TABLE LeaseAgreement (
	leaseId		 CHAR(15) NOT NULL PRIMARY KEY,
	propertyId 	 CHAR(15) FOREIGN KEY Rental_Properties(propertyId),
	homePhone	 NUMBER(10),
	workPhone	 NUMBER(10),
	contactName	 VARCHAR(15),
	contactPhone NUMBER(10),
	startDate	 DATE,
	endDate		 DATE,
	totalRent	 NUMERIC(8, 2),
	deposit		 NUMERIC(4, 2)
);