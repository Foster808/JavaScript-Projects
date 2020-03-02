CREATE DATABASE School;

CREATE TABLE Classes (
	Class_ID int,
	Class_Name varchar(255),
);

CREATE TABLE Students (
	Student_ID int,
	Student_Name varchar(255),
);

CREATE TABLE Instructors (
	Instructor_ID int,
	Instructor_Name varchar(255),
);

ALTER TABLE Classes 
ADD Student_ID varchar(20) DEFAULT NULL;

ALTER TABLE Classes 
ADD Instructor_ID varchar(20) DEFAULT NULL;


ALTER TABLE Classes
ADD FOREIGN KEY (Student_ID) REFERENCES Students(Student_ID);

ALTER TABLE Classes
ADD FOREIGN KEY (Instructor_ID) REFERENCES Instructors(Instructor_ID);
