--Part – A

--1. Update deposit amount of all customers from 3000 to 5000.
UPDATE DEPOSIT
SET AMOUNT=3000
WHERE AMOUNT=5000
SELECT AMOUNT FROM DEPOSIT

--2. Change branch name of ANIL from VRCE to C.G. ROAD. (Use Borrow Table)
UPDATE BORROW 
SET BNAME='C.G. ROAD'
WHERE CNAME='ANIL'
SELECT * FROM BORROW

--3. Update Account No of SANDIP to 111 & Amount to 5000.
UPDATE DEPOSIT
SET ACTNO=111,AMOUNT=5000
WHERE CNAME='SANDIP'
SELECT * FROM DEPOSIT

--4. Give 10% Increment in Loan Amount.
UPDATE BORROW
SET AMOUNT=AMOUNT+(AMOUNT * 0.10)
SELECT * FROM BORROW

--5. Update deposit amount of all depositors to 5000 whose account no between 103 & 107.
UPDATE DEPOSIT
SET AMOUNT=5000
WHERE ACTNO BETWEEN 103 AND 107
SELECT * FROM DEPOSIT

--Part – B

--6. Update amount of loan no 321 to NULL.
UPDATE BORROW
SET AMOUNT=NULL
WHERE LOANNO=321
SELECT * FROM BORROW

--7. Change Loan number from 201 to 401 & also change branch name from VRCE to AJNI.
UPDATE BORROW
SET LOANNO=401,BNAME='AJNI'
WHERE LOANNO=201
SELECT * FROM BORROW

--8. Modify customer name ANIL to ANIL JAIN.
UPDATE DEPOSIT
SET CNAME='ANIL JAIN'
WHERE CNAME ='ANIL'
SELECT * FROM DEPOSIT

--9. Give an increment of ₹1000 in the Loan Amount.
UPDATE BORROW
SET AMOUNT = AMOUNT + 1000
SELECT * FROM BORROW

--10. Update the customer’s name from MINU to SINU and change the amount to ₹10,000.
UPDATE DEPOSIT
SET AMOUNT=10000,CNAME='SINU'
WHERE CNAME='MINU'
SELECT * FROM DEPOSIT

--Part – C

--11. Change Name to Ramesh, Branch Name to VRCE & Amount to 5500, Whose Account Number is 102.
UPDATE DEPOSIT
SET CNAME='VRCE',BNAME='VRCE',AMOUNT=5500
WHERE ACTNO=102
SELECT * FROM DEPOSIT

--12. Make Branch Name & Amount NULL, Whose Loan Number is 481 & Name is KRANTI.
UPDATE BORROW
SET BNAME=NULL,AMOUNT=NULL
WHERE LOANNO=481
SELECT * FROM BORROW

--13. Give 5% Increment in Loan Amount whose loan no less then 321.
UPDATE BORROW
SET AMOUNT=AMOUNT+(AMOUNT * 0.5)
WHERE LOANNO<321
SELECT * FROM BORROW

--14. Update the customer city from BOMBAY to MUMBAI.
UPDATE CUSTOMERS
SET CITY='MUMBAI'
WHERE CITY='BOMBAY'
SELECT * FROM CUSTOMERS

--15. Update the branch name to VRCE where the Loan number is 375.
UPDATE BORROW
SET BNAME='VRCE'
WHERE LOANNO=375
SELECT * FROM BORROW