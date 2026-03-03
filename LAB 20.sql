CREATE TABLE Computer(
    RollNo INT,
    Name VARCHAR(20)
);

CREATE TABLE Electrical(
    RollNo INT,
    Name VARCHAR(20)
);

INSERT INTO Computer VALUES
(101,'Ajay'),
(105,'Haresh'),
(107,'Mahesh'),
(115,'Manish');

INSERT INTO Electrical VALUES
(109,'Ajay'),
(115,'Manish');

SELECT * FROM Computer
SELECT * FROM Electrical

--Part – A
--1. Display the name of students who is either in Computer or in Electrical.
SELECT NAME FROM Computer
UNION
SELECT NAME FROM Electrical

--2. Display the name of students who is either in Computer or in Electrical including duplicate data.
SELECT NAME FROM Computer
UNION ALL
SELECT NAME FROM Electrical

--3. Display name of students who is in both Computer and Electrical.
SELECT NAME FROM Computer
INTERSECT
SELECT NAME FROM Electrical

--4. Display name of students who are in Computer but not in Electrical.
SELECT NAME FROM Computer
EXCEPT
SELECT NAME FROM Electrical

--5. Display name of students who are in Electrical but not in Computer.
SELECT NAME FROM Electrical
EXCEPT
SELECT NAME FROM Computer

--6. Display all the details of students who are either in Computer or in Electrical.
SELECT * FROM Computer
UNION
SELECT * FROM Electrical

--7. Display all the details of students who are in both Computer and Electrical.
SELECT * FROM Computer
INTERSECT
SELECT * FROM Electrical

CREATE TABLE Employee_A(
    EmpID INT,
    EName VARCHAR(20),
    Department VARCHAR(20)
);

CREATE TABLE Employee_B(
    EmpID INT,
    EName VARCHAR(20),
    Department VARCHAR(20)
);

INSERT INTO Employee_A VALUES
(101,'Amar','Sales'),
(102,'Boby','IT'),
(103,'Charlie','HR'),
(104,'Denish','Sales');

INSERT INTO Employee_B VALUES
(101,'Amar','Sales'),
(103,'Charlie','HR'),
(105,'Isha','Finance'),
(106,'Fatima','IT');

SELECT * FROM Employee_A
SELECT * FROM Employee_B

--Part – B
--1. Find all unique employees present in either Employees_A OR Employees_B.
SELECT * FROM Employee_A
UNION
SELECT * FROM Employee_B

--2. Find ALL employees from both tables, including duplicates.
SELECT * FROM Employee_A
UNION ALL
SELECT * FROM Employee_B

--3. Find employees who are present in BOTH Employees_A AND Employees_B.
SELECT * FROM Employee_A
INTERSECT
SELECT * FROM Employee_B

--4. Find employees present in Employees_A BUT NOT in Employees_B.
SELECT * FROM Employee_A
EXCEPT
SELECT * FROM Employee_B

--5. Find employees present in Employees_B BUT NOT in Employees_A.
SELECT * FROM Employee_B
EXCEPT
SELECT * FROM Employee_A

--Part – C
--6. Find unique employees belonging to the 'IT' department in either table.
SELECT * FROM Employee_A
WHERE department='IT'
UNION
SELECT * FROM Employee_B
WHERE department='IT'


--7. Find employees who are in 'Sales' AND appear in both tables.
SELECT * FROM Employee_A
WHERE department='Sales'
INTERSECT
SELECT * FROM Employee_B
WHERE department='Sales'

--8. List all names from both tables, retaining all duplicates.
SELECT EName FROM Employee_A
UNION ALL
SELECT EName FROM Employee_B

--9. Find employees in A with EmployeeID > 102, who are NOT in B
SELECT * FROM Employee_A
WHERE EmpID > 102
EXCEPT
SELECT * FROM Employee_B
