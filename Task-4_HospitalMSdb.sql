-- using the same database that was created in task 2

USE HospitalMSdb;

UPDATE Patients
SET Age = 36
WHERE PatientID = 1;

SELECT * FROM Patients WHERE PatientID = 1;


UPDATE Doctors
SET Specialty = 'General Medicine'
WHERE DoctorID = 104;

SELECT Specialty FROM Doctors WHERE DoctorID = 104;


UPDATE Appointments
SET Date = '2026-06-20'
WHERE AppointmentID = 1003;

SELECT Date FROM Appointments WHERE AppointmentID = 1003;


UPDATE Patients
SET Name = 'Mohammed Al Riyami'
WHERE PatientID = 3;

SELECT Name FROM Patients WHERE PatientID = 3;


UPDATE Appointments
SET DoctorID = 101
WHERE AppointmentID = 1008;

SELECT DoctorID FROM Appointments WHERE AppointmentID = 1008;