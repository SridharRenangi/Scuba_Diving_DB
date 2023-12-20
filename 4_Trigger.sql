--6.Trigger:

--Audit Table:
CREATE TABLE Audit_Dive_Locations (
    AuditID INT NOT NULL IDENTITY(1,1),
    Action VARCHAR(255) NOT NULL,
    LocationName VARCHAR(255) NOT NULL,
    Description TEXT,
    ChangedDate DATETIME NOT NULL,
    PRIMARY KEY (AuditID)
);


--Trigger for Insert Operation:
CREATE TRIGGER trg_Audit_Dive_Locations_Insert
ON Dive_Trips
AFTER INSERT
AS
BEGIN
    SET NOCOUNT ON;
    INSERT INTO Audit_Dive_Locations (Action, LocationName, Description, ChangedDate)
    SELECT 'INSERT', TripLocation, Instructor, GETDATE()
    FROM inserted;
END;


--Trigger for Update Operation:
CREATE TRIGGER trg_Audit_Dive_Locations_Update
ON Dive_Trips
AFTER UPDATE
AS
BEGIN
    SET NOCOUNT ON;
    INSERT INTO Audit_Dive_Locations (Action, LocationName, Description, ChangedDate)
    SELECT 'UPDATE', TripLocation, Instructor, GETDATE()
    FROM inserted; 
END;


--Trigger for Delete Operation:
CREATE TRIGGER trg_Audit_Dive_Locations_Delete
ON Dive_Trips
AFTER DELETE
AS
BEGIN
    SET NOCOUNT ON;
    INSERT INTO Audit_Dive_Locations (Action, LocationName, Description, ChangedDate)
    SELECT 'DELETE', TripLocation, Instructor, GETDATE()
    FROM deleted; 
END;


--Test Script:
-- Insert a new record
INSERT INTO Dive_Trips (TripLocation, TripDate, TripTime, Instructor)
VALUES ('Great Barrier Reef', '2023-11-08', '10:00 AM', 'Rahul Sharma'),
       ('Maldives', '2023-11-15', '12:00 PM', 'Priya Singh');

SELECT * FROM Dive_Trips;

-- Updating the TripDate for a specific record
UPDATE Dive_Trips
SET TripDate = '2023-12-01'
WHERE TripLocation = 'Great Barrier Reef';

SELECT * FROM Dive_Trips;


-- Delete an existing record
-- Disable the foreign key constraint
ALTER TABLE Dive_Logs NOCHECK CONSTRAINT FK__Dive_Logs__TripI__20C1E124;

-- Perform the delete operation on Dive_Trips
DELETE FROM Dive_Trips WHERE TripLocation = 'Maldives';

-- Re-enable the foreign key constraint
ALTER TABLE Dive_Logs WITH CHECK CHECK CONSTRAINT FK__Dive_Logs__TripI__20C1E124;


SELECT * FROM Dive_Trips;

-- Check the audit table for the inserted record
SELECT * FROM Audit_Dive_Locations
WHERE Action = 'INSERT';

-- Check the audit table for the updated record
SELECT * FROM Audit_Dive_Locations
WHERE Action = 'UPDATE';

-- Check the audit table for the deleted record
SELECT * FROM Audit_Dive_Locations
WHERE Action = 'DELETE';
