-- Databricks notebook source
CREATE TABLE Attendance (
    student_ID INT PRIMARY KEY, 
    date DATE,
    status VARCHAR (10)
    );

INSERT INTO Attendance (student_id, date, status)
VALUES 
(1, '2025-04-01', NULL),
(2, '2025-04-01', 'Present'),
(3, '2025-04-01', 'Absent' ); 

-- Q14. Show attendance records with status. Replace NULL with "Not Marked"
SELECT student_id,
       date,
       IFNULL(status, 'Not Marked') AS attendance_status
FROM Attendance;


