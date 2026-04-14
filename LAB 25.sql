CREATE TABLE Department1 (
    DID INT PRIMARY KEY,
    DName VARCHAR(50)
);

CREATE TABLE Student13 (
    Rno INT PRIMARY KEY,
    Name VARCHAR(50),
    City VARCHAR(50),
    DID INT,

);
    FOREIGN KEY (DID) REFERENCES Department(DID)

CREATE TABLE Academic13 (
    Rno INT PRIMARY KEY,
    SPI DECIMAL(3,1),
    Bklog INT,

);
    FOREIGN KEY (Rno) REFERENCES Student(Rno)

INSERT INTO Department1 VALUES
(10, 'Computer'),
(20, 'Electrical'),
(30, 'Mechanical'),
(40, 'Civil');

INSERT INTO Student13 VALUES
(101, 'Raju', 'Rajkot', 10),
(102, 'Amit', 'Ahmedabad', 20),
(103, 'Sanjay', 'Baroda', 40),
(104, 'Neha', 'Rajkot', 20),
(105, 'Meera', 'Ahmedabad', 30),
(106, 'Mahesh', 'Baroda', 10);

INSERT INTO Academic13 VALUES
(101, 8.8, 0),
(102, 9.2, 2),
(103, 7.6, 1),
(104, 8.2, 4),
(105, 7.0, 2),
(106, 8.9, 3);

SELECT * FROM Department1
SELECT * FROM Student13
SELECT * FROM Academic13

--Part – A

--1. Display details of students who are from computer department.
SELECT * FROM Student13
WHERE DID IN(
              SELECT DID FROM Department1
			  WHERE DName='COMPUTER'
             )

--2. Display name of students whose SPI is more than 8.
SELECT * FROM Student13
WHERE Rno IN(
              SELECT Rno FROM Academic13
			  WHERE SPI >8
             )

--3. Display details of students of computer department who belongs to Rajkot city.
SELECT * FROM Student13
WHERE City='RAJKOT' AND DID =(
              SELECT DID FROM Department1
			  WHERE DName='COMPUTER'
             )

--4. Find total number of students of electrical department.
SELECT COUNT(*) AS total
FROM Student13
WHERE DID IN(
              SELECT DID FROM Department1
			  WHERE DName='Electrical'
             )

--5. Display name of student who is having maximum SPI.
SELECT Name FROM Student13
WHERE Rno IN(
              SELECT Rno FROM Academic13
			  WHERE SPI =(
			            SELECT MAX(SPI) FROM Academic13
						)
             )

--Part – B

--6. Display details of students having more than 1 backlog.
SELECT * FROM Student13
WHERE Rno IN(
              SELECT Rno FROM Academic13
			  WHERE Bklog >1
			  )
             
--7. Display name of student who is having second highest SPI
SELECT Name FROM Student13
WHERE Rno IN(
              SELECT Rno FROM Academic13
			  WHERE SPI =(
			            SELECT MAX(SPI) FROM Academic13
						WHERE SPI < (
									SELECT MAX(SPI) FROM Academic13	
									)			
						)
             )
--8. Display name of students who are either from computer department or from mechanical department.
SELECT * FROM Student13
WHERE DID IN(
              SELECT DID FROM Department1
			  WHERE DName='computer' OR DName='mechanical'
             )
--Part – C

--9. Display name of students who are in same department as 102 studying in.
--10. Display name of students whose SPI is more than 9 and who is from electrical department. 