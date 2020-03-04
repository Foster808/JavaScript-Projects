CREATE DATABASE School1;


CREATE TABLE Classes (
	Class_ID int DEFAULT NULL,
	Class_Name varchar(255),
	PRIMARY KEY (Class_ID)
);

CREATE TABLE Students (
	Student_ID int DEFAULT NULL,
	Student_Name varchar(255),
	PRIMARY KEY (Student_ID)
);

CREATE TABLE Instructors (
	Instructor_ID int DEFAULT NULL,
	Instructor_Name varchar(255),
	PRIMARY KEY (Instructor_ID)
);

--Step 6

ALTER TABLE Classes 
ADD Student_ID int DEFAULT NULL;

ALTER TABLE Classes 
ADD Instructor_ID int DEFAULT NULL;

ALTER TABLE Classes
ADD FOREIGN KEY (Student_ID) REFERENCES Students(Student_ID);

ALTER TABLE Classes
ADD FOREIGN KEY (Instructor_ID) REFERENCES Instructors(Instructor_ID);

--Step 6

ALTER TABLE Students
ADD Class_ID int DEFAULT NULL;

ALTER TABLE Students
ADD Instructor_ID int DEFAULT NULL;


ALTER TABLE Students
ADD FOREIGN KEY (Class_ID) REFERENCES Classes(Class_ID);

ALTER TABLE Students
ADD FOREIGN KEY (Instructor_ID) REFERENCES Instructors(Instructor_ID);

--Step 7

ALTER TABLE Instructors
ADD Student_ID int DEFAULT NULL;

ALTER TABLE Instructors
ADD Class_ID int DEFAULT NULL;


ALTER TABLE Instructors
ADD FOREIGN KEY (Student_ID) REFERENCES Students(Student_ID);

ALTER TABLE Instructors
ADD FOREIGN KEY (Class_ID) REFERENCES Classes(Class_ID);


--Step 8 Populate the Classes table with two classes:
--Software Developer Boot Camp
--C# Boot Camp


INSERT INTO Classes (Class_ID, Class_Name)
VALUES (1, 'Software Developer Boot Camp');

INSERT INTO Classes (Class_ID, Class_Name)
VALUES (2, 'C# Boot Camp');


--Step 9 Populate the Students table with six student names

INSERT INTO Students (Student_ID, Student_Name)
VALUES (1, 'Bob Smith');

INSERT INTO Students (Student_ID, Student_Name)
VALUES (2, 'Georgia Lines');

INSERT INTO Students (Student_ID, Student_Name)
VALUES (3, 'Julie Webb');

INSERT INTO Students (Student_ID, Student_Name)
VALUES (4, 'Jaleel Mack');

INSERT INTO Students (Student_ID, Student_Name)
VALUES (5, 'Robbie G');

INSERT INTO Students (Student_ID, Student_Name)
VALUES (6, 'Nicole Last');

SELECT * FROM Students

--Step 10 Populate the Instructors table with two Instructor names
--NOT WORKING YET!

INSERT INTO Instructors (Instructor_ID, Instructor_Name, Student_ID, Class_ID)
VALUES (1, 'JW Wheal', NULL, 1);


INSERT INTO Instructors (Student_ID, Class_ID)
VALUES (2, 2);

SELECT * FROM Instructors

UPDATE Instructors
SET Student_ID=1, Class_ID=2
WHERE Instructor_ID=1;

UPDATE Instructors
SET Student_ID=1, Class_ID=2
WHERE Instructor_ID=2;


-- ISNULL replaces values,    IS NULL  searches for something that esseentially doesn't exist
--SELECt Statement


--Step 11 Within the Student table, assign values to the Class_ID foreign key (i.e. assign half the students
--to one class and the other half to the other class).

UPDATE Students 
SET Class_ID='1'
WHERE Student_ID=1;

UPDATE Students 
SET Class_ID='1'
WHERE Student_ID=2;

UPDATE Students 
SET Class_ID='1'
WHERE Student_ID=3;

UPDATE Students 
SET Class_ID='2'
WHERE Student_ID=4;

UPDATE Students 
SET Class_ID='2'
WHERE Student_ID=5;

UPDATE Students 
SET Class_ID='2'
WHERE Student_ID=6;

SELECT * FROM Students

--Step 12 Within the Classes table, assign values to the Instructor_ID foreign key (i.e. assign one of the 
--Instructors to one class and the other to the other class).

UPDATE Classes
SET Instructor_ID='1'
WHERE Class_ID=1;

UPDATE Classes
SET Instructor_ID='2'
WHERE Class_ID=2;

SELECT * FROM Classes

--Step 13 Within the Students table, assign values to the Instructor_ID foreign key (i.e. assign one of the
--Instructors to half the students and the other Instructor to the other half of the students).

UPDATE Students
SET Instructor_ID='1'
WHERE Student_ID=1;

UPDATE Students
SET Instructor_ID='1'
WHERE Student_ID=2;

UPDATE Students
SET Instructor_ID='1'
WHERE Student_ID=3;

UPDATE Students
SET Instructor_ID='2'
WHERE Student_ID=4;

UPDATE Students
SET Instructor_ID='2'
WHERE Student_ID=5;

UPDATE Students
SET Instructor_ID='2'
WHERE Student_ID=6;

SELECT * FROM Students

--Step 14 Run a query to display all Instructor names

SELECT * FROM Instructors

--Step 15 Run a query to display all student names in alphabetical order.

SELECT * FROM Students
ORDER BY Student_Name ASC;

--EXTRA
SELECT * FROM Students
ORDER BY Class_ID;


--Step 16 Run a query that displays all classes, with the students and Instructors assigned to each.


SELECT
	Classes.Class_ID,
	Classes.Class_Name,
	Students.Student_ID,
	Students.Student_Name,
	Instructors.Instructor_ID,
	Instructors.Instructor_Name AS Teacher
FROM
	Classes
INNER JOIN
	Students ON Students.Student_ID = Classes.Student_ID
INNER JOIN
	Instructors ON Instructors.Instructor_ID = Classes.Instructor_ID





--EXTRA
SELECT * FROM Instructors;

SELECT Class_Name FROM Classes;

SELECT * FROM Classes;
