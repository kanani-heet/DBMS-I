--Part – A


--1. Display the result of 5 multiply by 30.
SELECT 5*30 AS RESULT

--2. Find out the absolute value of -25, 25, -50 and 50.
SELECT ABS(-25)AS ABSOULUTE,ABS(25)AS ABSOULUTE,ABS(-50)AS ABSOULUTE,ABS(50) AS ABSOULUTE

--3. Find smallest integer value that is greater than or equal to 25.2, 25.7 and -25.2.
SELECT CEILING(25.2)AS SMALLEST,CEILING(25.7)AS SMALLEST,CEILING(-25.2) AS SMALLEST

--4. Find largest integer value that is smaller than or equal to 25.2, 25.7 and -25.2.
SELECT FLOOR(25.2)AS LARGEST,FLOOR(25.7)AS LARGEST,FLOOR(-25.2) AS LARGEST

--5. Find out remainder of 5 divided 2 and 5 divided by 3.
SELECT 5%2,5%3 AS REMAINDAR

--Part – B


--6. Find out value of 3 raised to 2nd power and 4 raised 3rd power.
SELECT POWER(2,3)AS RAISED,POWER(3,4) AS RAISED

--7. Find out the square root of 25, 30 and 50.
SELECT SQRT(25),SQRT(30),SQRT(50) AS SQUAREROOT

--8. Find out the square of 5, 15, and 25.
SELECT SQUARE(5),SQUARE(15),SQUARE(25) AS SQUARE

--9. Find out the value of PI.
SELECT PI()

--10. Find out round value of 157.732 for 2, 0 and -2 decimal points.
SELECT ROUND(157.732,2),ROUND(157.732,0),ROUND(157.732,-2) AS ROUNDVALUE

--Part – C


----11. Find out exponential value of 2 and 3.
SELECT EXP(2),EXP(3) AS EXPONENTIAL

--12. Find out logarithm having base b having value 10 of 5 and 100.
SELECT LOG10(5),LOG10(100)

--13. Find sine, cosine and tangent of 3.1415.
SELECT SIN(-25),COS(3.1415),TAN(3.1415)

--14. Find sign of -25, 0 and 25.
SELECT SIN(-25),SIN(0),SIN(25)

--15. Generate random number using function.
SELECT RAND();
