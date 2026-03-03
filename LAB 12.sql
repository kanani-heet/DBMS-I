--Part – A

--1. Write a query to display the current date & time. Label the column Today_Date.
SELECT GETDATE() AS TODAY_DATE

--2. Write a query to find new date after 365 day with reference to today.
SELECT  DATEADD(YEAR,1,GETDATE()) AS 1_YEAR AFTER

--3. Display the current date in a format that appears as may 5 1994 12:00AM.
SELECT FORMAT(GETDATE(), 'dd MMM yyyy hh:mm:ss:tt') AS RESULT;

--4. Display the current date in a format that appears as 03 Jan 1995.
SELECT FORMAT(GETDATE(), 'dd MMM yyyy') AS Formatted_Date;

--5. Display the current date in a format that appears as Jan 04, 96.
SELECT FORMAT(GETDATE(), 'MMM dd yy') AS Formatted_Date;

--Part – B

--6. Write a query to find out total number of months between 31-Dec-08 and 31-Mar-09.
SELECT DATEDIFF(MONTH, '2008-12-31', '2009-03-31') AS TOTAL_MONTHS;

--7. Write a query to find out total number of years between 25-Jan-12 and 14-Sep-10.
SELECT DATEDIFF(YEAR, '2010-09-14', '2012-01-25') AS TOTAL_YEARS;
--8. Write a query to find out total number of hours between 25-Jan-12 7:00 and 26-Jan-12 10:30.
SELECT DATEDIFF(HOUR, '2012-01-25 07:00', '2012-01-26 10:30') AS TOTAL_HOURS;

--9. Write a query to extract Day, Month, Year from given date 12-May-16.
SELECT DAY('12-May-16') AS_DAY,
 MONTH('12-May-16') AS_MONTH,
 YEAR('12-May-16') AS_YEAR
--10. Write a query that adds 5 years to current date.
SELECT DATEADD(YEAR,5,GETDATE())

--Part – C

--11. Write a query to subtract 2 months from current date.
SELECT DATEADD(MONTH,-2,GETDATE()) AS CD

--12. Extract month from current date using datename () and datepart () function.
SELECT DATENAME(MONTH,GETDATE()) AS MONT
SELECT DATEPART(YEAR,GETDATE()) AS DAT

--13. Write a query to find out last date of current month.
SELECT EOMONTH(GETDATE()) AS LAST_DATE

--14. Write a query to display date & time after 30 days from today.
SELECT DATEADD(DAY,30,GETDATE()) AS [30_DAYS_LATER]

--15. Calculate your age in years and months.SELECT DATEDIFF(YEAR,'2008-08-13',GETDATE()) AS AGE_YEARS
SELECT DATEDIFF(MONTH,'2008-08-13',GETDATE()) AS AGE_MONTHS