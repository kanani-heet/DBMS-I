  CREATE TABLE Student_Info (
     StudentID INT IDENTITY(1,1) PRIMARY KEY,
     Enrollment_No VARCHAR(20) Not Null Unique,
     NAME VARCHAR(20) Not Null,
     CPI DECIMAL(5,2) CHECK (CPI<=10),
     JoiningDate DATETIME Not Null DEFAULT GETDATE(),
     Bklog INT Not Null CHECK (Bklog >=0),
     StateName VARCHAR(50) DEFAULT'GUJARAT'
);

SELECT * FROM Student_Info

INSERT INTO Student_Info(Enrollment_No,NAME,CPI,Bklog)
VALUES(1,'MEET',6.48,0)
      (1,'MEET',7.48,0)

  CREATE TABLE State (
    StateID INT IDENTITY(1,1) PRIMARY KEY,
	StateName VARCHAR(20) Not Null Unique 

);

SELECT * FROM State

INSERT INTO State(StateName)
VALUES('GUJARAT'),
      ('Null'),
      ('UP'),
      ('MP')


  CREATE TABLE City (
    CityID INT IDENTITY(1,1) PRIMARY KEY Not Null,
	CityName VARCHAR(20) Not Null Unique, 
	PinCode VARCHAR(10) Not Null,
    Foreign key (CityID) REFERENCES State(StateID)
);

SELECT * FROM City

INSERT INTO City(CityName,PinCode)
VALUES()