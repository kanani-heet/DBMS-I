--Part – A


--1. Find the length of following. (I) NULL (II) ‘ hello ’ (III) Blank
SELECT LEN('NULL'),LEN('HELLO'),LEN('BLANK')

--2. Display your name in lower & upper case.
SELECT LOWER('HEET'),UPPER('HEET')

--3. Display first three characters of your name.
SELECT SUBSTRING('HEET',1,3)

--4. Display 3rd to 10th character of your name.
SELECT SUBSTRING('HEET KANANI',3,10)

--5. Write a query to convert ‘abc123efg’ to ‘abcXYZefg’ & ‘abcabcabc’ to ‘ab5ab5ab5’ using REPLACE.
SELECT REPLACE('abc123efg','123','XYZ') 
SELECT REPLACE('abcabcabc','c','5')

--6. Write a query to display ASCII code for ‘a’,’A’,’z’,’Z’, 0, 9.
SELECT ASCII('a'),ASCII('A'),ASCII('z'),ASCII('Z'),ASCII('0'),ASCII('9')

--7. Write a query to display character based on number 97, 65,122,90,48,57.
SELECT CHAR(97),CHAR(65),CHAR(122),CHAR(90),CHAR(48),CHAR(57)


--Part – B


--8. Write a query to remove spaces from left of a given string ‘hello world ‘.
SELECT LTRIM('HELLO WORLD')

--9. Write a query to remove spaces from right of a given string ‘ hello world ‘.
SELECT RTRIM('HELLO WORLD')

--10. Write a query to display first 4 & Last 5 characters of ‘SQL Server’.
SELECT LEFT('SQL SERVER',4),RIGHT('SQL SERVER',5)

--11. Write a query to convert a string ‘1234.56’ to number (Use CAST()).
SELECT CAST(1234.56 AS VARCHAR)

--12. Write a query to convert a float 10.58 to integer (UseCONVERT()).
SELECT CONVERT(INT,10.58)

--13. Put 10 space before your name using function.
SELECT SPACE(10)+'HEET'

--14. Combine two strings (Your name & Surname) using + sign as well as CONCAT ().
SELECT CONCAT('HEET',' ','KANANI')
--Part – C


--15. Find reverse of “Darshan”.
SELECT REVERSE('DARSHAN')

--16. Repeat your name 3 times.
SELECT REPLICATE('HEET',3)

--17. Write a query to display first 3 & Last 3 characters of ‘your name’.
SELECT LEFT('HEET',3),RIGHT('HEET',3)

--18. From Data, returns the first non-null value in a list. (Use COALESCE())
SELECT COALESCE(NULL,NULL,'SQL','SERVER') 

--19. Tests whether the expression is numeric. (Use ISNUMERIC())
SELECT ISNUMERIC('1234')AS IS_NUMBER1, ISNUMERIC ('12AB')AS IS_NUMBER2

--20. Search for "t" in string "Customer", and return its position. (Use CHARINDEX())
SELECT CHARINDEX ('T','CUSTOMER') AS POSITION
