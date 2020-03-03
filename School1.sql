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

--Not working yet

INSERT INTO Classes (Class_Name)
VALUES ('Software Developer Boot Camp');

INSERT INTO Classes (Class_Name)
VALUES ('C# Boot Camp');


--Step 9 Populate the Students table with six student names

--table isn't getting populated even though these statements do work
UPDATE Students
SET Student_Name='Bob Smith'
WHERE Student_ID=1;

UPDATE Students
SET Student_Name='Cara Bronx'
WHERE Student_ID=2;

UPDATE Students
SET Student_Name='Julie Webb'
WHERE Student_ID=3;

UPDATE Students
SET Student_Name='Jaleel Mack'
WHERE Student_ID=4;

UPDATE Students
SET Student_Name='Tom More'
WHERE Student_ID=5;

UPDATE Students
SET Student_Name='Robbie G'
WHERE Student_ID=6;

SELECT * FROM Students

--Step 10 Populate the Instructors table with two Istructor names

--Not working yet
UPDATE Instructors
SET Instructor_Name='JW Wheal'
WHERE Instructor_ID=1;

UPDATE Instructors
SET Instructor_Name='Clara Bradford'
WHERE Instructor_ID=2;


--Step 11 Within the Student table, assign values to the Class_ID foreign key (i.e. assign half the students
--to one class and the other half to the other class).


--Step 12 Within the Classes table, assign values to the Instructor_ID foreign key (i.e. assign one of the 
--Instructors to one class and the other to the other class).


--Step 13 Within the Students table, assign values to the Instructor_ID foreign key (i.e. assign one of the
--Instructors to half the students and the other Instructor to the other half of the students).


--Step 14 Run a query to display all Instructor names


--Step 15 Run a query to display all student names in alphabetical order.


--Step 16 Run a query that displays all classes, with the students and Instructors assigned to each.


