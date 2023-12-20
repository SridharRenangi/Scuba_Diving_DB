# Scuba_Diving_DB
**Scuba Dive Center Database**

This SQL script sets up a database structure for a dive center management system. It creates tables to manage divers, courses, equipment, dive trips, and logs, offering a comprehensive solution for dive center operations. The script includes:

Database Setup: Creates a database named sridh849 and defines tables for divers, courses, enrollments, equipment, equipment rental, dive trips, dive logs, and audit tables.

Data Population: Inserts sample data into these tables, including diver information, course details, equipment inventory, dive trip records, and dive logs.

Views: Constructs views to display active divers, popular equipment, and diver enrollments by course, making it easier to access and analyze specific information.

Triggers: Implements triggers for auditing dive location table changes, recording insertions, updates, and deletions in an audit table for tracking modifications.

Stored Procedures: Defines procedures for inserting dive locations and retrieving dive trips by instructor or course.

Cursors: Utilizes a cursor within a stored procedure to fetch diver details based on a specified course name.

The script provides a comprehensive setup for a dive center database, facilitating management and tracking of divers, courses, equipment, trips, and related information. It's designed to enhance operational efficiency and data analysis within a dive center environment.
