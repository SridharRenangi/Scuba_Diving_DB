-- Drop Stored Procedures
DROP PROCEDURE IF EXISTS sp_GetDiversByCourse;
DROP PROCEDURE IF EXISTS sp_GetDiveTripsByInstructor;
DROP PROCEDURE IF EXISTS sp_InsertDiveLocation;
 
-- Drop Audit Table
DROP TABLE IF EXISTS Audit_Dive_Locations;

-- Drop Triggers
DROP TRIGGER IF EXISTS trg_Audit_Dive_Locations_Delete;
DROP TRIGGER IF EXISTS trg_Audit_Dive_Locations_Update;
DROP TRIGGER IF EXISTS trg_Audit_Dive_Locations_Insert;

-- Drop Views
DROP VIEW IF EXISTS vw_DiverEnrollmentsByCourse;
DROP VIEW IF EXISTS vw_PopularEquipment;
DROP VIEW IF EXISTS vw_ActiveDivers;

-- Drop Tables
DROP TABLE IF EXISTS Dive_Logs;
DROP TABLE IF EXISTS Dive_Trips;
DROP TABLE IF EXISTS Equipment_Rental;
DROP TABLE IF EXISTS Equipment;
DROP TABLE IF EXISTS Enrollments;
DROP TABLE IF EXISTS Courses;
DROP TABLE IF EXISTS Divers;

-- Drop Database
DROP DATABASE IF EXISTS sridh849;
