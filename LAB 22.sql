CREATE TABLE ProductInventory (
    ProductID INT IDENTITY(1,1) PRIMARY KEY,
    ProductName VARCHAR(100) NOT NULL,
    CatalogNumber VARCHAR(20) UNIQUE,
    UnitPrice DECIMAL(10,2) NOT NULL 
        CHECK (UnitPrice >= 0.50 AND UnitPrice <= 5000.00),
    QuantityInStock INT NOT NULL 
        CHECK (QuantityInStock >= 0),
    IsActive BIT NOT NULL DEFAULT 1
);


CREATE TABLE DepartmentData (
    DeptID INT PRIMARY KEY,
    DeptName VARCHAR(50) NOT NULL UNIQUE
);

CREATE TABLE EmployeeData (
    EmpID INT PRIMARY KEY,
    EmpName VARCHAR(50) NOT NULL,
    Salary DECIMAL(10,2) NOT NULL 
        CHECK (Salary > 30000),
    DeptID INT,
    FOREIGN KEY (DeptID) REFERENCES DepartmentData(DeptID)
);

CREATE TABLE Product (
    ProductID INT IDENTITY(1,1) PRIMARY KEY,
    ProductName VARCHAR(100) NOT NULL,
    CatalogNumber VARCHAR(20) UNIQUE,
    UnitPrice DECIMAL(10,2) NOT NULL 
        CHECK (UnitPrice >= 0.50 AND UnitPrice <= 5000.00),
    QuantityInStock INT NOT NULL 
        CHECK (QuantityInStock >= 0),
    IsActive BIT NOT NULL DEFAULT 1
);

CREATE TABLE Department (
    DeptID INT PRIMARY KEY,
    DeptName VARCHAR(50) NOT NULL UNIQUE
);

CREATE TABLE Members (
    MemberID INT IDENTITY(1,1) PRIMARY KEY,
    MemberName VARCHAR(50) NOT NULL,
    Email VARCHAR(100) NOT NULL UNIQUE,
    Phone VARCHAR(15) UNIQUE,
    JoinDate DATETIME NOT NULL DEFAULT GETDATE(),
    City VARCHAR(50) NOT NULL DEFAULT 'Rajkot'
);


CREATE TABLE Books (
    BookID INT IDENTITY(100,1) PRIMARY KEY,
    Title VARCHAR(100) NOT NULL,
    Author VARCHAR(50) NOT NULL,
    Category VARCHAR(30) NOT NULL,
    Price DECIMAL(7,2) NOT NULL 
        CHECK (Price > 0),
    Stock INT NOT NULL 
        CHECK (Stock >= 0)
);

CREATE TABLE Issue_Return (
    IssueID INT IDENTITY(500,1) PRIMARY KEY,
    MemberID INT NOT NULL,
    BookID INT NOT NULL,
    IssueDate DATE NOT NULL DEFAULT GETDATE(),
    ReturnDate DATE NULL,
    FOREIGN KEY (MemberID) REFERENCES Members(MemberID),
    FOREIGN KEY (BookID) REFERENCES Books(BookID)
);


