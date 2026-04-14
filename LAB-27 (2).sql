-- StudentAcademicData Table
CREATE TABLE StudentAcademicData (
    StuID INT PRIMARY KEY,
    Name VARCHAR(50) NOT NULL,
    City VARCHAR(50) NOT NULL
);


-- StudentAcademicData
INSERT INTO StudentAcademicData (StuID, Name, City) VALUES
(101, 'Amit', 'Rajkot'),
(102, 'Neha', 'Surat'),
(103, 'Rohan', 'Baroda'),
(104, 'Meera', 'Rajkot'),
(105, 'Jatin', 'Ahmedabad'),
(106, 'Kajal', 'Surat');

SELECT * FROM StudentAcademicData


-- Course Table
CREATE TABLE Course (
    CourseID INT PRIMARY KEY,
    CourseName VARCHAR(50) NOT NULL,
    Credits INT NOT NULL
);


-- Course
INSERT INTO Course (CourseID, CourseName, Credits) VALUES
(1, 'DBMS', 4),
(2, 'Operating System', 3),
(3, 'Computer Networks', 4),
(4, 'Data Structures', 3),
(5, 'Python Programming', 4);

SELECT * FROM Course


-- Enrolments Table
CREATE TABLE Enrolments (
    Enroll_ID INT PRIMARY KEY,
    StuID INT,
    CourseID INT,
    Marks INT NOT NULL,
    
    -- Foreign Keys
    FOREIGN KEY (StuID) REFERENCES StudentAcademicData(StuID),
    FOREIGN KEY (CourseID) REFERENCES Course(CourseID)
);


-- Enrolments
INSERT INTO Enrolments (Enroll_ID, StuID, CourseID, Marks) VALUES
(1, 101, 1, 85),
(2, 101, 2, 78),
(3, 101, 5, 92),
(4, 102, 1, 88),
(5, 102, 3, 75),
(6, 103, 2, 67),
(7, 103, 4, 73),
(8, 104, 5, 95),
(9, 105, 1, 56),
(10, 105, 3, 61),
(11, 106, 2, 82),
(12, 106, 4, 77);

SELECT * FROM Enrolments




--1. Display student names with the courses they enrolled in.
	SELECT s.Name, c.CourseName
	FROM StudentAcademicData s
	JOIN Enrolments e ON s.StuID = e.StuID
	JOIN Course c ON e.CourseID = c.CourseID;

--2. Display students and their marks.
	SELECT s.Name, e.Marks
	FROM StudentAcademicData s
	JOIN Enrolments e ON s.StuID = e.StuID;

--3. Display students who enrolled in DBMS.
	SELECT s.Name
	FROM StudentAcademicData s
	JOIN Enrolments e ON s.StuID = e.StuID
	JOIN Course c ON e.CourseID = c.CourseID
	WHERE c.CourseName = 'DBMS';

--4. Display all students and their enrolments (include non-enrolled students).
	SELECT s.Name, c.CourseName, e.Marks
	FROM StudentAcademicData s
	LEFT JOIN Enrolments e ON s.StuID = e.StuID
	LEFT JOIN Course c ON e.CourseID = c.CourseID;

--5. Display courses that have no enrolments.
	SELECT c.CourseName
	FROM Course c
	LEFT JOIN Enrolments e ON c.CourseID = e.CourseID
	WHERE e.CourseID IS NULL;

--6. Display students with city and course credits.
	SELECT s.Name, s.City, c.Credits
	FROM StudentAcademicData s
	JOIN Enrolments e ON s.StuID = e.StuID
	JOIN Course c ON e.CourseID = c.CourseID;

--7. Display total number of courses each student has enrolled in.
	SELECT s.Name, COUNT(e.CourseID) AS TotalCourses
	FROM StudentAcademicData s
	LEFT JOIN Enrolments e ON s.StuID = e.StuID
	GROUP BY s.Name;
	 
--8. Display student names with marks greater than 80.
	SELECT s.Name, e.Marks
	FROM StudentAcademicData s
	JOIN Enrolments e ON s.StuID = e.StuID
	WHERE e.Marks > 80;

--9. Display students and courses in which credits = 4.
	SELECT s.Name, c.CourseName
	FROM StudentAcademicData s
	JOIN Enrolments e ON s.StuID = e.StuID
	JOIN Course c ON e.CourseID = c.CourseID
	WHERE c.Credits = 4;

--10. Display average marks of each student.
	SELECT s.Name, AVG(e.Marks) AS AvgMarks
	FROM StudentAcademicData s
	JOIN Enrolments e ON s.StuID = e.StuID
	GROUP BY s.Name;

--11. Display highest marks obtained in each course.
	SELECT c.CourseName, MAX(e.Marks) AS HighestMarks
	FROM Course c
	JOIN Enrolments e ON c.CourseID = e.CourseID
	GROUP BY c.CourseName;

--12. Display students who scored below 60 in any course.
	SELECT DISTINCT s.Name
	FROM StudentAcademicData s
	JOIN Enrolments e ON s.StuID = e.StuID
	WHERE e.Marks < 60;

--13. Display students and courses from Rajkot city only.
	SELECT s.Name, c.CourseName
	FROM StudentAcademicData s
	JOIN Enrolments e ON s.StuID = e.StuID
	JOIN Course c ON e.CourseID = c.CourseID
	WHERE s.City = 'Rajkot';

--14. Display total marks gained by each student.
	SELECT s.Name, SUM(e.Marks) AS TotalMarks
	FROM StudentAcademicData s
	JOIN Enrolments e ON s.StuID = e.StuID
	GROUP BY s.Name;

--15. Display the list of students who have taken at least 3 courses.
	SELECT s.Name
	FROM StudentAcademicData s
	JOIN Enrolments e ON s.StuID = e.StuID
	GROUP BY s.Name
	HAVING COUNT(e.CourseID) >= 3;

--16. Display students who have the highest marks in their courses.
	SELECT s.Name, c.CourseName, e.Marks
	FROM Enrolments e
	JOIN StudentAcademicData s ON e.StuID = s.StuID
	JOIN Course c ON e.CourseID = c.CourseID
	WHERE e.Marks = (
		SELECT MAX(e2.Marks)
		FROM Enrolments e2
		WHERE e2.CourseID = e.CourseID
	);

--17. Display students who scored above the average marks of that course.
	SELECT s.Name, c.CourseName, e.Marks
	FROM Enrolments e
	JOIN StudentAcademicData s ON e.StuID = s.StuID
	JOIN Course c ON e.CourseID = c.CourseID
	WHERE e.Marks > (
		SELECT AVG(e2.Marks)
		FROM Enrolments e2
		WHERE e2.CourseID = e.CourseID
	);

--18. Display each student’s highest and lowest marks with course names.
	SELECT s.Name, c.CourseName, e.Marks
	FROM Enrolments e
	JOIN StudentAcademicData s ON e.StuID = s.StuID
	JOIN Course c ON e.CourseID = c.CourseID
	WHERE e.Marks = (
		SELECT MAX(e2.Marks)
		FROM Enrolments e2
		WHERE e2.StuID = e.StuID
	)
	OR e.Marks = (
		SELECT MIN(e2.Marks)
		FROM Enrolments e2
		WHERE e2.StuID = e.StuID
	);

--19. Display students enrolled in at least one 4-credit course.
	SELECT DISTINCT s.Name
	FROM StudentAcademicData s
	JOIN Enrolments e ON s.StuID = e.StuID
	JOIN Course c ON e.CourseID = c.CourseID
	WHERE c.Credits = 4;

--20. Display the total marks of each course and arrange them from highest to lowest.
	SELECT c.CourseName, SUM(e.Marks) AS TotalMarks
	FROM Course c
	JOIN Enrolments e ON c.CourseID = e.CourseID
	GROUP BY c.CourseName
	ORDER BY TotalMarks DESC;

