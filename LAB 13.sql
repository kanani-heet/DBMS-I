CREATE TABLE STUDENT_MARKS(
SID INT,
SName VARCHAR(25),
 Marks INT
)
SELECT * FROM STUDENT_MARKS

INSERT INTO STUDENT_MARKS
VALUES(1,'John',90),
      (2,'Martin',80),
	  (3,'Carol',89),
      (4,'Jack',99),
      (5,'Rose',88),
      (6,'Mary',90)


--Part – A

--1. Find the total number of students.
SELECT COUNT(SNAME) FROM STUDENT_MARKS AS TOTAL

--2. Find the total marks scored by all students.
SELECT SUM(MARKS) FROM STUDENT_MARKS AS [SUM]

--3. Find the average marks of all students.
SELECT AVG(MARKS) FROM STUDENT_MARKS AS [AVG]

--4. Find the minimum marks scored by any student.
SELECT MIN(MARKS) FROM STUDENT_MARKS AS [MIN]

--5. Find the maximum marks scored by any student.
SELECT MAX(MARKS) FROM STUDENT_MARKS AS [MAX]

CREATE TABLE EMPLOYEE(
EID INT,
EName VARCHAR(25),
Department VARCHAR(25), 
Salary DECIMAL, 
JoiningDate DATE, 
City VARCHAR(25)
)
DROP TABLE EMPLOYEE

SELECT * FROM EMPLOYEE

INSERT INTO EMPLOYEE
VALUES(101,'Rahul','Admin',56000,'01-Jan-90','Rajkot'),
      (102,'Hardik','IT',18000,'25-Sep-90','Ahmedabad'),
      (103,'Bhavin','HR',25000,'14-May-91','Baroda'),
      (104,'Bhoomi','Admin',39000,'08-Feb-91','Rajkot'),
      (105,'Rohit','IT',17000,'23-Jul-90','Jamnagar'),
      (106,'Priya','IT',9000,'18-Oct-90','Ahmedabad'),
      (107,'Neha','HR',34000,'25-Dec-91','Rajkot')


--Part – B
--1. Display the Highest, Lowest, Total, and Average salary of all employees & label the columns Maximum,
--Minimum, Total_Sal and Average_Sal, respectively.
SELECT MAX(SALARY) AS [MAX], 
MIN(SALARY) AS [MIN], 
COUNT(SALARY) AS [TOTAL_SAL], 
AVG(SALARY) AS [AVG] FROM EMPLOYEE

--2. Find total number of employees of EMPLOYEE table.
SELECT COUNT(ENAME) AS TOTAL FROM EMPLOYEE

--3. Retrieve maximum salary from IT department.
SELECT MAX(SALARY) FROM EMPLOYEE 
WHERE Department='IT'

--4. Count total number of cities of employee without duplication.
SELECT COUNT( DISTINCT CITY) AS TOTAL FROM EMPLOYEE


--5. Display city with the total number of employees belonging to each city.
SELECT COUNT(*) CITY FROM EMPLOYEE GROUP BY CITY

--6. Display city having more than one employee.
SELECT COUNT(*) CITY FROM EMPLOYEE 
GROUP BY CITY HAVING COUNT(*)>1

--7. Give total salary of each department of EMPLOYEE table.
SELECT COUNT(*) SALARY FROM EMPLOYEE
GROUP BY Department


--8. Give average salary of each department of EMPLOYEE table without displaying the respective
--department name.
SELECT AVG(SALARY) FROM EMPLOYEE
GROUP BY Department

--9. Give minimum salary of employee who belongs to Ahmedabad.
SELECT MIN(SALARY) FROM EMPLOYEE
WHERE CITY='AHMEDABAD'

--10. List the departments having total salaries more than 50000 and located in city Rajkot.
SELECT SUM(SALARY) CITY FROM EMPLOYEE
WHERE CITY='RAJKOT'
GROUP BY Department
HAVING SUM(SALARY)>50000
