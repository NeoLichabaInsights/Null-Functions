-- Databricks notebook source
CREATE TABLE Employees_Extra (
    emp_id INT PRIMARY KEY, 
    bonus INT, 
    commission INT
    );

INSERT INTO Employees_Extra (emp_id, bonus, commission)
VALUES 
(1, NULL, 300),
(2, 100, NULL),
(3, NULL, NULL );

-- Q12. Show employee ID and the first available value among bonus or commission

SELECT emp_id,
       COALESCE(bonus, commission) AS first_available_reward
FROM Employees_Extra;
