-- 1
-- DROP DATABASE IF EXISTS GRADASCEVICINFO2025;
CREATE DATABASE IF NOT EXISTS GRADASCEVICINFO2025;

-- 2

USE GradascevicInfo2025;

-- 3

DROP TABLE IF EXISTS PERSON;

CREATE TABLE PERSON(
	PersonID INT PRIMARY KEY auto_increment,
    Name VARCHAR (20) NOT NULL,
    Adress VARCHAR (20),
    City VARCHAR(20),
    State CHAR (2) NOT NULL,
    Zipcode VARCHAR (10),
    AreaCode CHAR(3),
    LocalPhoneNo CHAR(8),
    dob DATE
);

-- 4

ALTER TABLE PERSON
MODIFY COLUMN State CHAR(2) DEFAULT 'CA' NOT NULL;

DESCRIBE PERSON;

-- 5

ALTER TABLE PERSON
MODIFY COLUMN State CHAR(2) DEFAULT 'CA';

DESCRIBE PERSON;

-- 6

INSERT INTO PERSON(Name, City, State, Areacode, LocalPhoneNo)
VALUES('Omar', 'Rochester', 'NY','716', '457-2000');

SELECT * FROM PERSON;

-- 7
SET SQL_SAFE_UPDATES = 0;

UPDATE PERSON SET Areacode = '585'
WHERE Areacode = '716'
AND City='Rochester'
AND State='NY';

-- 8

DELETE FROM PERSON
WHERE PersonID= 1;

-- 9

DESCRIBE FILM;

-- 10

SELECT title as 'Title', replacement_cost AS 'Charge', description AS 'Description'
FROM FILM
WHERE replacement_cost BETWEEN 15.99 AND 17.99
AND description like '%z%';

-- 11

SELECT title as 'Title', replacement_cost AS 'Replacement cost'
FROM FILM
WHERE replacement_cost <10.00;

-- 12

SELECT title as 'TITLE', rating as 'RATING', release_year AS 'RELEASE YEAR'
FROM FILM
WHERE title LIKE '_a__r%'
AND rating != 'R'
AND rating != 'PG-13';