-- Using single-table-style mapping for subclasses of Person
create table Person (
	ssn integer,
	name varchar(50) not null,
	address varchar(100),
	-- an Person can belong to any combination of subclasses
	isPatient boolean,
	isDoctor boolean,
	isPharmacist boolean,
	-- patient-specific attributes
	primaryPhys integer, -- total participation handled below
	birthdate date,
	-- doctor-specific attributes
	-- ... none ... Specialities are in separate table
	-- pharmacist-specific attributes
	phName varchar(30),
	phAddress varchar(100),
	qual varchar(30),
	primary key (ssn)
	-- foreign key (phName,phAddress) is added later
	-- constraint ClassAttributeCheck ...
	-- -- trying to write a boolean expression that determines
	-- -- that there is an appropriate combination of subclass
	-- -- flags (isX) and attribute values is extremely tedious,
	-- -- so we don't even bother to try
);
