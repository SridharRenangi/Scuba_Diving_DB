
-- Insert into table divers
INSERT INTO Divers (FirstName, LastName, Email, PhoneNumber, CertificationLevel, EmergencyContactName, EmergencyContactNumber)
VALUES
('Ravi', 'Kumar', 'ravikumar@email.com', '123-456-7890', 'PADI Open Water Diver', 'Priya Kumar', '987-654-3210'),
('Priya', 'Kumar', 'priyakumar@email.com', '987-654-3210', 'PADI Advanced Open Water Diver', 'Ravi Kumar', '123-456-7890'),
('Amit', 'Sharma', 'amitsharma@email.com', '555-123-4567', 'PADI Rescue Diver', 'Neha Sharma', '789-456-1230'),
('Neha', 'Sharma', 'nehasharma@email.com', '789-456-1230', 'PADI Divemaster', 'Amit Sharma', '555-123-4567'),
('Sneha', 'Patel', 'snehapatel@email.com', '333-666-9999', 'PADI Instructor', 'Raj Patel', '444-888-7777'),
('Raj', 'Patel', 'rajpatel@email.com', '444-888-7777', 'PADI Instructor Trainer', 'Sneha Patel', '333-666-9999'),
('Anil', 'Chopra', 'anilchopra@email.com', '666-999-3333', 'PADI Open Water Diver', 'Sara Chopra', '888-777-4444'),
('Sara', 'Chopra', 'sarachopra@email.com', '888-777-4444', 'PADI Advanced Open Water Diver', 'Anil Chopra', '666-999-3333'),
('Rahul', 'Gupta', 'rahulgupta@email.com', '456-789-1230', 'PADI Rescue Diver', 'Ritu Gupta', '555-321-6789'),
('Ritu', 'Gupta', 'ritugupta@email.com', '555-321-6789', 'PADI Divemaster', 'Rahul Gupta', '456-789-1230');

SELECT * FROM Divers;

--Insert table for courses that are offered.
INSERT INTO Courses (CourseName, Duration, Instructor, Prerequisites)
VALUES
('PADI Open Water Diver', 3, 'Rahul Sharma', 'None'),
('PADI Advanced Open Water Diver', 5, 'Priya Singh', 'PADI Open Water Diver'),
('PADI Rescue Diver', 4, 'Amit Patel', 'PADI Advanced Open Water Diver'),
('PADI Divemaster', 6, 'Neha Kumar', 'PADI Rescue Diver'),
('PADI Instructor', 10, 'Sneha Gupta', 'PADI Open Water Diver'),
('PADI Instructor Trainer', 12, 'Raj Shah', 'PADI Instructor'),
('PADI Specialty Course 1', 4, 'Anil Verma', 'PADI Advanced Open Water Diver'),
('PADI Specialty Course 2', 3, 'Sara Malhotra', 'PADI Advanced Open Water Diver'),
('PADI Specialty Course 3', 5, 'Ritu Chopra', 'PADI Advanced Open Water Diver'),
('PADI Specialty Course 4', 7, 'Rahul Das', 'PADI Divemaster');

SELECT * FROM Courses;

--Insert into Enrollments table.
INSERT INTO Enrollments (DiverID, CourseID, EnrollmentDate)
VALUES
(1, 3, '2023-01-01'),
(2, 4, '2023-02-15'),
(3, 5, '2023-04-10'),
(4, 6, '2023-06-22'),
(5, 7, '2023-08-05'),
(6, 8, '2023-01-31'),
(7, 9, '2023-03-12'),
(8, 10, '2023-05-18'),
(9, 11, '2023-09-03'),
(10, 12, '2023-11-20');

SELECT * FROM Enrollments;




--Insert into equipment table
INSERT INTO Equipment (EquipmentType, Quantity, Condition, LastMaintenanceDate)
VALUES
('Regulator', 10, 'Good', '2023-10-04'),
('BCD', 10, 'Good', '2023-09-15'),
('Wetsuit', 10, 'Good', '2023-08-22'),
('Fins', 10, 'Good', '2023-07-27'),
('Mask', 10, 'Good', '2023-06-30'),
('Snorkel', 10, 'Good', '2023-05-25'),
('Tank', 10, 'Good', '2023-04-20'),
('Gauges', 10, 'Good', '2023-03-15'),
('Compass', 10, 'Good', '2023-02-10'),
('Flashlight', 10, 'Good', '2023-01-05');

SELECT * FROM Equipment;

--Insert table for Equipment_Rental
INSERT INTO Equipment_Rental (DiverID, EquipmentID, RentalDate, ReturnDate)
VALUES
(1, 1, '2023-10-04', '2023-10-05'),
(1, 2, '2023-10-04', '2023-10-05'),
(1, 3, '2023-10-04', '2023-10-05'),
(1, 4, '2023-10-04', '2023-10-05'),
(1, 5, '2023-10-04', '2023-10-05'),
(2, 6, '2023-10-04', '2023-10-05'),
(2, 7, '2023-10-04', '2023-10-05'),
(2, 8, '2023-10-04', '2023-10-05'),
(2, 9, '2023-10-04', '2023-10-05'),
(2, 10, '2023-10-04', '2023-10-05');

SELECT * FROM Equipment_Rental;

--Insert table for Dive_Trips
INSERT INTO Dive_Trips (TripLocation, TripDate, TripTime, Instructor)
VALUES
('Great Barrier Reef', '2023-11-08', '10:00 AM', 'Rahul Sharma'),
('Maldives', '2023-11-15', '12:00 PM', 'Priya Singh'),
('Koh Tao', '2023-11-22', '02:00 PM', 'Amit Patel'),
('Gili Islands', '2023-11-29', '11:00 AM', 'Neha Kumar'),
('Sipadan Island', '2023-12-06', '09:00 AM', 'Sneha Gupta'),
('Komodo National Park', '2023-11-11', '01:00 PM', 'Raj Shah'),
('Raja Ampat', '2023-11-18', '10:00 AM', 'Rahul Sharma'),
('Palau', '2023-11-25', '03:00 PM', 'Priya Singh'),
('Cenderawasih Bay', '2023-11-25', '03:00 PM', 'Priya Singh');

SELECT * FROM Dive_Trips;

--Insert into Dive_logs table
INSERT INTO Dive_Logs (DiverID, TripID, DiveLocation, DiveDate, DiveTime, Depth, Conditions)
VALUES
(1, 1, 'Great Barrier Reef', '2023-10-04', '10:00 AM', 40, 'Clear water, good visibility'),
(1, 2, 'Maldives', '2023-10-11', '12:00 PM', 50, 'Strong currents, some visibility'),
(1, 3, 'Koh Tao', '2023-10-18', '02:00 PM', 30, 'Calm sea, excellent visibility'),
(1, 4, 'Gili Islands', '2023-10-25', '11:00 AM', 60, 'Abundant marine life, diverse coral reefs'),
(1, 5, 'Sipadan Island', '2023-11-02', '09:00 AM', 80, 'Barracudas, sharks, and turtles'),
(2, 6, 'Komodo National Park', '2023-10-07', '01:00 PM', 20, 'Strong currents, challenging conditions'),
(2, 7, 'Raja Ampat', '2023-10-14', '10:00 AM', 70, 'Stunning underwater landscapes, diverse marine life'),
(2, 8, 'Palau', '2023-10-21', '03:00 PM', 45, 'Manta rays, shipwrecks, and underwater caves'),
(2, 9, 'Cenderawasih Bay', '2023-10-28', '12:00 PM', 30, 'Abundant coral reefs, colorful fish');

SELECT * FROM Dive_Logs;