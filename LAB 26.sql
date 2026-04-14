CREATE TABLE Departments (
    DeptID INT PRIMARY KEY,
    DeptName VARCHAR(50),
    Location VARCHAR(50)
);

CREATE TABLE Emp_Detail (
    EmpID INT PRIMARY KEY,
    Name VARCHAR(50),
    DeptID INT,
    Salary DECIMAL(10,2),
    HireDate DATE,
    FOREIGN KEY (DeptID) REFERENCES Departments(DeptID)
);

INSERT INTO Departments VALUES
(10,'HR','Surat'),
(20,'Sales','Rajkot'),
(30,'IT','Baroda'),
(40,'Finance','Surat'),
(50,'Operations','Ahmedabad');


INSERT INTO Emp_Detail VALUES
(101,'Ali',10,60000,'2022-01-15'),
(102,'Boby',20,75000,'2021-05-20'),
(103,'Charu',10,62000,'2023-03-10'),
(104,'Danish',30,90000,'2020-11-01'),
(105,'Emran',20,78000,'2022-08-25'),
(106,'Faizal',30,92000,'2021-07-01'),
(107,'Gita',40,85000,'2023-11-12'),
(108,'Hena',50,55000,'2024-02-01'),
(109,'Isha',20,75000,'2021-05-20'),
(110,'Jay',50,58000,'2024-05-01');

SELECT * FROM Departments
SELECT * FROM Emp_Detail

--Part – A

--1. List all employees who earn a salary greater than the average salary of all employees.
SELECT Name,Salary
FROM Emp_Detail
WHERE Salary > (SELECT AVG(Salary) FROM Emp_Detail)

--2. Find the names of employees who work in the 'Surat' location.
SELECT Name FROM Emp_Detail
WHERE DeptID IN(
                 SELECT DeptID FROM Departments
                 WHERE Location='SURAT'
				 )

--3. List all employees who do not work in the 'Rajkot' and 'Ahmedabad' location.
SELECT Name FROM Emp_Detail
WHERE DeptID IN(
                 SELECT DeptID FROM Departments
                 WHERE Location!='Rajkot' AND Location!='Ahmedabad'
				 )

--Part – B

--4. List the names of departments that have more than two employees.

--5. List all employees who earn the same salary as Boby.

--6. List employees hired after the employee named 'Ali'.

--Part – C

--7. List employees whose salary is either the highest or the lowest within the 'HR' department.

--8. List employees who work in a 'Surat' location AND have a salary less than the average salary of all
--employees.

--9. List the name and salary of all employees who earn more than the minimum salary paid in the 'IT'
--department.

