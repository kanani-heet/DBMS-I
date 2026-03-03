CREATE TABLE Employee_Performance (
    EmployeeID INT PRIMARY KEY,
    Name VARCHAR(50),
    Team VARCHAR(50),
    YearsService INT,
    ProjectsCompleted INT,
    AnnualBonus DECIMAL(10, 2)
);


INSERT INTO Employee_Performance 
(EmployeeID, Name, Team, YearsService, ProjectsCompleted, AnnualBonus)
VALUES
(101, 'Ashok','Marketing',5,8,4000.00),
(102, 'Bina','Sales',2,5,2500.00),
(103, 'Chirag','Marketing',8,12,6000.00),
(104, 'Deep','IT',1,3,1000.00),
(105, 'Krish','Sales',6,10, 5500.00),
(106, 'Shruti','IT',4,7,3000.00),
(107, 'Bhargav','Sales',3,6,3000.00),
(108, 'Rajni','Marketing',10,15,8000.00);

select * from Employee_Performance

--1. Calculate the total number of projects completed by each Team.
SELECT COUNT(EmployeeID) AS TotalEmployees FROM Employee_Performance GROUP BY Team

--2. Calculate the average years of service and the maximum annual bonus awarded within each Team.
SELECT AVG(ProjectsCompleted) AS TotalProjects,MAX(AnnualBonus) AS MAXIMUM FROM Employee_Performance GROUP BY Team 

--3. Find the number of employees belonging to each Team.
SELECT COUNT(*) AS AvgYearsService FROM Employee_Performance GROUP BY Team

--4. Calculate the total AnnualBonus grouped by both Team and YearsService.
SELECT Team,YearsService, SUM(AnnualBonus) AS TotalBonus FROM Employee_Performance
GROUP BY Team, YearsService

--5. Find Teams that have more than two employees.
SELECT COUNT(*) FROM Employee_Performance GROUP BY Team HAVING COUNT(*)>2

--6. Find Teams whose employees have completed a combined total of more than 20 projects.
SELECT COUNT(ProjectsCompleted) AS combined FROM Employee_Performance 
GROUP BY ProjectsCompleted 
HAVING SUM(AnnualBonus)>20

--7. Find Teams where the average annual bonus is less than 3500.00.
SELECT AVG(AnnualBonus) AS combined FROM Employee_Performance 
GROUP BY Team 
HAVING MIN(AnnualBonus)<3500

--8. Find Teams where the minimum number of projects completed by any single member is less than 5.
SELECT MIN(ProjectsCompleted) as singlemember FROM Employee_Performance 
GROUP BY Team 
HAVING MIN(ProjectsCompleted)<5

--9. Find Teams that have at least one employee with more than 8 years of service.
SELECT MAX(YearsService) AS yearsservice FROM Employee_Performance  
GROUP BY Team 
HAVING MAX(YearsService)>8

--10. Find Teams where the average annual bonus is greater than 3000.00. Order the final result by the
--average bonus in descending order.
SELECT AVG(AnnualBonus) as AvgBonus FROM Employee_Performance
GROUP BY Team
HAVING AVG(AnnualBonus)>3000
ORDER BY AvgBonus DESC

--11. Find Teams where the sum of all members' years of service is less than 15 years.
SELECT SUM(YearsService) AS allmembers FROM Employee_Performance 
GROUP BY Team 
HAVING SUM(YearsService)<15

--12. Find Teams where the maximum years of service is greater than 5 AND the minimum annual bonus
--awarded in that team is less than 4000.00.
SELECT MAX(YEARSSERVICE) AS [maximum years of service],MIN(AnnualBonus)  AS [minimum annual bonus] FROM Employee_Performance 
GROUP BY Team
HAVING MAX(YearsService)>5 AND MIN(AnnualBonus)<4000

