--7. Stored Procedures:
--Stored Procedure for Inserting Dive Locations:
CREATE PROCEDURE sp_InsertDiveLocation
    @p_TripLocation VARCHAR(255),
    @p_Instructor TEXT
AS
BEGIN
    INSERT INTO dbo.Dive_Trips(TripLocation, Instructor)
    VALUES (@p_TripLocation, @p_Instructor);
END;


--Stored Procedure for Retrieving Dive Trips by Instructor:
CREATE PROCEDURE sp_GetDiveTripsByInstructor
    @p_InstructorName VARCHAR(255)
AS
BEGIN
    SELECT *
    FROM Dive_Trips
    JOIN Instructors ON Dive_Trips.InstructorID = Instructors.InstructorID
    WHERE Instructors.InstructorName = @p_InstructorName;
END;