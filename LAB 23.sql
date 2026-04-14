CREATE TABLE Student
(
    Rno INT PRIMARY KEY,
    Name VARCHAR(20),
    Branch VARCHAR(10)
);

INSERT INTO Student (Rno, Name, Branch) VALUES
(101, 'Raju', 'CE'),
(102, 'Amit', 'CE'),
(103, 'Sanjay', 'ME'),
(104, 'Neha', 'EC'),
(105, 'Meera', 'EE'),
(106, 'Mahesh', 'ME');

SELECT * FROM Student

CREATE TABLE Result
(
    Rno INT,
    SPI DECIMAL(3,1)
);

INSERT INTO Result (Rno, SPI) VALUES
(101, 8.8),
(102, 9.2),
(103, 7.6),
(104, 8.2),
(105, 7.0),
(107, 8.9);

SELECT * FROM Result


CREATE TABLE Employee
(
    EmployeeNo VARCHAR(5) PRIMARY KEY,
    Name VARCHAR(20),
    ManagerNo VARCHAR(5)
);

INSERT INTO Employee (EmployeeNo, Name, ManagerNo) VALUES
('E01', 'Tarun', NULL),
('E02', 'Rohan', 'E02'),
('E03', 'Priya', 'E01'),
('E04', 'Milan', 'E03'),
('E05', 'Jay', 'E01'),
('E06', 'Anjana', 'E04');

SELECT * FROM Employee




===============================================================================================

Part – A

--1. Combine information from student and result table using cross join or Cartesian product.

     SELECT *FROM Student
     CROSS JOIN Result;
--2. Display Rno, Name, Branch and SPI of CE branch’s student only.

     SELECT S.Rno, S.Name, S.Branch, R.SPI
	 FROM Student S
	 JOIN Result R ON S.Rno = R.Rno
	 WHERE S.Branch = 'CE';

--3. Display Rno, Name, Branch and SPI of other than EC branch’s student only.

     SELECT S.Rno, S.Name, S.Branch, R.SPI
     FROM Student S
	 JOIN Result R ON S.Rno = R.Rno
	 WHERE S.Branch <> 'EC';

--4. Display average result of each branch.

     SELECT S.Branch, AVG(R.SPI) AS Avg_SPI
     FROM Student S
     JOIN Result R ON S.Rno = R.Rno
     GROUP BY S.Branch;

--5. Display average result of each branch and sort them in ascending order by SPI.

     SELECT S.Branch, AVG(R.SPI) AS Avg_SPI
     FROM Student S
     JOIN Result R ON S.Rno = R.Rno
     GROUP BY S.Branch
     ORDER BY Avg_SPI ASC;

==============================================================================================
--Part – B
--6. Display average result of CE and ME branch.

	SELECT S.Branch, AVG(R.SPI) AS Avg_SPI
	FROM Student S
	JOIN Result R ON S.Rno = R.Rno
	WHERE S.Branch IN ('CE', 'ME')
	GROUP BY S.Branch; 

--7. Perform the left outer join on Student and Result tables.
.
	SELECT S.Rno, S.Name, S.Branch, R.SPI
	FROM Student S
	LEFT JOIN Result R ON S.Rno = R.Rno;

--8. Perform the right outer join on Student and Result tables.

	SELECT S.Rno, S.Name, S.Branch, R.SPI
	FROM Student S
	RIGHT JOIN Result R ON S.Rno = R.Rno;

--9. Perform the full outer join on Student and Result tables.

	SELECT S.Rno, S.Name, S.Branch, R.SPI
	FROM Student S
	FULL OUTER JOIN Result R ON S.Rno = R.Rno;

--10. Retrieve the names of employee along with their manager’s name from the Employee table.

	SELECT E.Name AS Employee, M.Name AS ManagerNo
	FROM Employee E
	LEFT JOIN Employee M
	ON E.ManagerNo = M.EmployeeNo;


========================================================================================
--Part – C
--11. Display maximum result of each branch.

	SELECT S.Branch, MAX(R.SPI) AS Max_SPI
	FROM Student S
	JOIN Result R ON S.Rno = R.Rno
	GROUP BY S.Branch;

--12. Display minimum result of each branch.

	SELECT S.Branch, MIN(R.SPI) AS Min_SPI
	FROM Student S
	JOIN Result R ON S.Rno = R.Rno
	GROUP BY S.Branch;

--13. Display name of student whose result is not generated.

	SELECT S.*FROM Student S
	LEFT JOIN Result R ON S.Rno = R.Rno
	WHERE R.Rno IS NULL;

--14. Display overall average result.

	SELECT AVG(SPI) AS Overall_Avg
	FROM Result;

--15. Display Rno, Name, Branch and SPI of those students whose SPI greater than 8.

	SELECT S.Rno, S.Name, S.Branch, R.SPI
	FROM Student S
	JOIN Result R ON S.Rno = R.Rno
	WHERE R.SPI > 8;

