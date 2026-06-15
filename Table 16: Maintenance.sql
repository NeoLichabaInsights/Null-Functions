-- Databricks notebook source
CREATE TABLE Maintenance (
    record_id INT PRIMARY KEY,
    machine_id STRING,
    issue VARCHAR (30),
    technician VARCHAR (30) 
);

INSERT INTO Maintenance (record_id, machine_id, issue, technician)
VALUES 
(1, 'M101', 'Overheating', NULL),
(2, 'M102', NULL, NULL),
(3, 'M103', 'Jammed', 'Alex');

SELECT *
FROM Maintenance;

-- Q20. Show maintenance log with default values

SELECT record_id
       machine_id,
    
    CASE
        WHEN issue IS NULL THEN 'Uknown Issue'
        ELSE issue
    END AS issue_log,
    
    CASE
        WHEN technician IS NULL THEN 'Not Assigned'
        ELSE technician
    END AS technician_name
FROM Maintenance;
