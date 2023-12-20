
--Three queries and their corresponding views.
--Query 1
SELECT
    FirstName,
    LastName,
    CertificationLevel,
    COUNT(*) AS TotalEnrollments
FROM Divers
JOIN Enrollments ON Divers.DiverID = Enrollments.DiverID
WHERE Enrollments.EnrollmentDate >= '2023-10-01' AND Enrollments.EnrollmentDate <= '2023-12-31'
GROUP BY FirstName, LastName, CertificationLevel;

--View:
CREATE VIEW vw_ActiveDivers AS
SELECT
    FirstName,
    LastName,
    CertificationLevel,
    COUNT(*) AS TotalEnrollments
FROM Divers
JOIN Enrollments ON Divers.DiverID = Enrollments.DiverID
WHERE Enrollments.EnrollmentDate >= '2023-10-01' AND Enrollments.EnrollmentDate <= '2023-12-31'
GROUP BY FirstName, LastName, CertificationLevel;

--DROP VIEW vw_ActiveDivers;


SELECT * FROM vw_ActiveDivers;

--Query 2:
SELECT
    EquipmentType,
    Quantity,
    Condition,
    COUNT(*) AS TotalRentals
FROM Equipment
JOIN Equipment_Rental ON Equipment.EquipmentID = Equipment_Rental.EquipmentID
WHERE Equipment_Rental.RentalDate >= '2023-10-01' AND Equipment_Rental.RentalDate <= '2023-12-31'
GROUP BY EquipmentType, Quantity, Condition;

--View:
CREATE VIEW vw_PopularEquipment AS
SELECT
    EquipmentType,
    Quantity,
    Condition,
    COUNT(*) AS TotalRentals
FROM Equipment
JOIN Equipment_Rental ON Equipment.EquipmentID = Equipment_Rental.EquipmentID
WHERE Equipment_Rental.RentalDate >= '2023-10-01' AND Equipment_Rental.RentalDate <= '2023-12-31'
GROUP BY EquipmentType, Quantity, Condition;


--Query 3:
SELECT
    FirstName,
    LastName,
    CertificationLevel,
    COUNT(*) AS TotalEnrollments
FROM Divers
JOIN Enrollments ON Divers.DiverID = Enrollments.DiverID
WHERE Enrollments.CourseID = 3
GROUP BY FirstName, LastName, CertificationLevel;


--VIew
CREATE VIEW vw_DiverEnrollmentsByCourse AS
SELECT
    FirstName,
    LastName,
    CertificationLevel,
    COUNT(*) AS TotalEnrollments
FROM Divers
JOIN Enrollments ON Divers.DiverID = Enrollments.DiverID
WHERE Enrollments.CourseID = 1
GROUP BY FirstName, LastName, CertificationLevel;
