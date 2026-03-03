select * from EMPLOYEES

--1. Display all the employees whose name starts with “m” and 4th character is “h”.
SELECT * FROM EMPLOYEES
WHERE ENAME LIKE'M%___H'

--2. Find the value of 3 raised to 5. Label the column as output.
SELECT POWER(3,5) AS OUTPUT

--3. Write a query to subtract 20 days from the current date.
SELECT DATEADD(DAY,-20,GETDATE()) AS SUBTRACT

--4. Write a query to display name of employees whose name starts with “j” and contains “n” in their
--name.
SELECT * FROM EMPLOYEES
WHERE ENAME LIKE'J%[N]'

--5. Display 2nd to 9th character of the given string “SQL Programming”.
SELECT SUBSTRING('SQL PROGRAMMING',2,9)

--6. Display name of the employees whose city name ends with “ney” &contains six characters.
SELECT * FROM EMPLOYEES
WHERE CITY LIKE'___%NEY'

--7. Write a query to convert value 15 to string.
SELECT CONVERT(INT,'15') AS STRING

--8. Add department column with varchar(20) to Employees table.
ALTER TABLE EMPLOYEES
ADD DEPARTMENT VARCHAR(20)

--9. Set the value of department to Marketing who belongs to London city.
UPDATE EMPLOYEES
SET DEPARTMENT='MARKETING'
WHERE CITY='LONDON'
SELECT * FROM EMPLOYEES

--10. Display all the employees whose name ends with either “n” or “y”.
SELECT * FROM EMPLOYEES
WHERE ENAME LIKE '%N' OR ENAME LIKE '%Y'

--11. Find smallest integer value that is greater than or equal to 63.1, 63.8 and -63.2.
SELECT CEILING(63.1) AS smallest,CEILING(63.8) AS smallest,CEILING(-63.2) AS smallest

--12. Display all employees whose joining date is not available.
SELECT * FROM EMPLOYEES
WHERE JOININGDATE IS NULL

--13. Display name of the employees in capital letters and city in small letters.
SELECT UPPER(ENAME) AS [UPPER],LOWER(CITY) AS [LOWER] FROM EMPLOYEES

--14. Change the data type of Ename from varchar(30) to char(30).
SELECT CAST (ENAME AS CHAR(30)) FROM EMPLOYEES

--15. Display city wise maximum salary.
SELECT MAX(SALARY) FROM EMPLOYEES
GROUP BY CITY

--16. Produce output like <Ename> works at <city> and earns <salary>.
	select CONCAT (ename, ' works at ', city, ' and earns ', salary) from EMPLOYEE

--17. Find total number of employees whose salary is more than 5000.
	select COUNT(*) from EMPLOYEE
	where Salary > 5000

--18. Write a query to display first 4 & last 3 characters of all the employees.
	select substring(ename,1,4) from EMPLOYEE

--19. List the city having total salaries more than 15000 and employees joined after 1
--st January, 2014.
	select city from EMPLOYEE
	where joiningdate > '01-Jan-14'
	group by city
	having sum(salary) > 15000

--20. Write a query to replace “u” with “oo” in Ename.
	select REPLACE(ename,'u','oo')from EMPLOYEE

--21. Display city with average salaries and total number of employees belongs to each city.
	select city,AVG(salary),COUNT(*)
	from EMPLOYEE
	group by city

--22. Display total salaries paid to female employees.
	select SUM(salary) from EMPLOYEE
	where gender = 'female'

--23. Display name of the employees and their experience in years.
	select DATEDIFF(year,joiningdate,GETDATE()) from EMPLOYEE

--24. Remove column department from employees table.
	alter table employee drop column department

--25. Update the value of city from sydney to null.
	update EMPLOYEE
	set city = null
	where city = 'sydney'

	select * from EMPmaster

--26. Retrieve all the Employee’s Name, Salary & Joining date.
	select ename,salary,joiningdate from EMPLOYEE

--27. Find out combine length of Ename & Gender.
	select len(ename) + len(gender) from EMPLOYEE

--28. Find the difference between highest & lowest salary.
	select max(salary) - min(salary) from EMPLOYEE

--29. Rename a column from Ename to FirstName.
	exec sp_rename 'employee.ename','firstname'

--30. Rename a table from Employees to EmpMaster.
	exec sp_rename 'employee','empmaster'

	select * from empmaster


