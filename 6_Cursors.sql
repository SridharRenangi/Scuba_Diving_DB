--8 Cursors:

CREATE PROCEDURE sp_GetDiversByCourse
    @p_CourseName VARCHAR(255)
AS
BEGIN
    DECLARE @diver_id INT;
    DECLARE @FirstName VARCHAR(255);
    DECLARE @LastName VARCHAR(255);

    DECLARE diver_cursor CURSOR FOR
        SELECT DiverID FROM Enrollments
        WHERE CourseName = @p_CourseName;

    OPEN diver_cursor;
    FETCH NEXT FROM diver_cursor INTO @diver_id;

    WHILE @@FETCH_STATUS = 0
    BEGIN
        SELECT @FirstName = FirstName, @LastName = LastName
        FROM Divers
        WHERE DiverID = @diver_id;

        PRINT CONCAT(@FirstName, ' ', @LastName);

        FETCH NEXT FROM diver_cursor INTO @diver_id;
    END;

    CLOSE diver_cursor;
    DEALLOCATE diver_cursor;
END;

--Drop:
--DROP PROCEDURE sp_GetDiversByCourse;
