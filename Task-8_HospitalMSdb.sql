-- using the hospital database

USE HospitalMSdb;

-- 1. Drop a table that is no longer used in the system

CREATE TABLE OldPatients (
    PatientID INT,
    Name VARCHAR(50)
);

DROP TABLE OldPatients;


-- 2. Remove a temporary reporting table

CREATE TABLE AppointmentReportTemp (
    AppointmentID INT,
    PatientID INT,
    DoctorID INT,
    Date DATE
);

DROP TABLE AppointmentReportTemp;


-- 3. Simulate system redesign by dropping one module table

CREATE TABLE BillingModule (
    BillID INT,
    PatientID INT,
    Amount DECIMAL(10,2)
);

DROP TABLE BillingModule;


-- 4. Identify tables that should be dropped last due to dependencies
-- Do NOT drop Patients or Doctors before Appointments.
-- Appointments depends on both Patients and Doctors.

-- 5. Understand impact on patient and appointment data
-- If you really needed to drop the real hospital tables, the safer order would be:

-- DROP TABLE Appointments;
-- DROP TABLE Patients;
-- DROP TABLE Doctors;