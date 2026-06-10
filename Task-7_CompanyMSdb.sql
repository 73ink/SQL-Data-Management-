-- using the company database

USE CompanyMSdb;

-- 1. Drop a table that is no longer required in the system
-- Example: create a temporary old table, then drop it.

CREATE TABLE OldEmployees (
    EmployeeID INT,
    Name VARCHAR(50)
);

DROP TABLE OldEmployees;


-- 2. Remove a backup or temporary table

CREATE TABLE DepartmentsBackup (
    DepartmentID INT,
    DepartmentName VARCHAR(50)
);

DROP TABLE DepartmentsBackup;


-- 3. Drop a project-related table after system redesign

CREATE TABLE ProjectArchive (
    ProjectID INT,
    ProjectName VARCHAR(50),
    DepartmentID INT
);

DROP TABLE ProjectArchive;


-- 4. Identify which tables should NOT be dropped due to dependencies
-- Do NOT drop Departments first because Employees and Projects depend on it.
-- Employees and Projects contain DepartmentID as a foreign key.

-- 5. Safe deletion planning before execution
-- If you really needed to drop the real company tables, the safer order would be:

-- DROP TABLE Employees;
-- DROP TABLE Projects;
-- DROP TABLE Departments;