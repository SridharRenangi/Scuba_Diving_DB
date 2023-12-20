-- Create the database
CREATE DATABASE sridh849;

-- Use the database
USE sridh849;


-- Create Tables
CREATE TABLE Divers (
  DiverID INT PRIMARY KEY IDENTITY(1,1),
  FirstName VARCHAR(50) NOT NULL,
  LastName VARCHAR(50) NOT NULL,
  Email VARCHAR(100) NOT NULL,
  PhoneNumber VARCHAR(20) NOT NULL,
  CertificationLevel VARCHAR(50) NOT NULL,
  EmergencyContactName VARCHAR(50) NOT NULL,
  EmergencyContactNumber VARCHAR(20) NOT NULL
);

-- Create Table Courses to keep track to different courses that are available 
-- and the instructor, if any pre-requisistes needed.
CREATE TABLE Courses (
  CourseID INT PRIMARY KEY IDENTITY(1,1),
  CourseName VARCHAR(50) NOT NULL,
  Duration INT NOT NULL,
  Instructor VARCHAR(50) NOT NULL,
  Prerequisites VARCHAR(255)
);

-- Create a table for enrollments, with references to tables Divers and Courses
CREATE TABLE Enrollments (
  EnrollmentID INT PRIMARY KEY IDENTITY(1,1),
  DiverID INT NOT NULL,
  CourseID INT NOT NULL,
  EnrollmentDate DATE NOT NULL,
  FOREIGN KEY (DiverID) REFERENCES Divers(DiverID),
  FOREIGN KEY (CourseID) REFERENCES Courses(CourseID)
);

-- Create a table for track of equipment
CREATE TABLE Equipment (
  EquipmentID INT PRIMARY KEY IDENTITY(1,1),
  EquipmentType VARCHAR(50) NOT NULL,
  Quantity INT NOT NULL,
  Condition VARCHAR(50) NOT NULL,
  LastMaintenanceDate DATE NOT NULL
);

--Create a Transaction table for Equipment rental
CREATE TABLE Equipment_Rental (
  RentalID INT PRIMARY KEY IDENTITY(1,1),
  DiverID INT NOT NULL,
  EquipmentID INT NOT NULL,
  RentalDate DATE NOT NULL,
  ReturnDate DATE,
  FOREIGN KEY (DiverID) REFERENCES Divers(DiverID),
  FOREIGN KEY (EquipmentID) REFERENCES Equipment(EquipmentID)
);

--Create a table for tracking of Dive Trips.
CREATE TABLE Dive_Trips (
  TripID INT PRIMARY KEY IDENTITY(1,1),
  TripLocation VARCHAR(100) NOT NULL,
  TripDate DATE NOT NULL,
  TripTime TIME NOT NULL,
  Instructor VARCHAR(50) NOT NULL
);

--Create a table for Dive logs.
CREATE TABLE Dive_Logs (
  LogID INT PRIMARY KEY IDENTITY(1,1),
  DiverID INT NOT NULL,
  TripID INT NOT NULL,
  DiveLocation VARCHAR(100) NOT NULL,
  DiveDate DATE NOT NULL,
  DiveTime TIME NOT NULL,
  Depth INT NOT NULL,
  Conditions VARCHAR(255),
  FOREIGN KEY (DiverID) REFERENCES Divers(DiverID),
  FOREIGN KEY (TripID) REFERENCES Dive_Trips(TripID)
);
