DROP DATABASE IF EXISTS mlinaricInfo;
CREATE DATABASE mlinaricInfo;
USE mlinaricInfo;

CREATE TABLE Person(
	PersonID INT UNIQUE,
    Name VARCHAR(20) NOT NULL,
    Address VARCHAR(20),
    City VARCHAR(20),
    State CHAR(2) NOT NULL,
    Zipcode VARCHAR(10),
    Areacode CHAR(3),
    LocalPhoneNo CHAR(8),
    dob DATE,
    PRIMARY KEY(PersonID)
);

-- 4.
ALTER TABLE Person
MODIFY COLUMN State CHAR(2) DEFAULT 'CA' NOT NULL;

-- 5.
ALTER TABLE Person
MODIFY COLUMN State CHAR(2) DEFAULT 'CA';

-- 6.
INSERT INTO Person (PersonID, Name, City, State, Areacode, LocalPhoneNo) VALUES (1, "Mario", "Rochester", "NY", "761", "475-2000");

-- 7.
SET SQL_SAFE_UPDATES = 0;

UPDATE Person SET Areacode = "585" WHERE City = "Rochester" AND State = "NY";

SET SQL_SAFE_UPDATES = 1;

-- 8.
DELETE FROM Person WHERE PersonID = 1;
