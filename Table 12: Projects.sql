-- Databricks notebook source
CREATE TABLE Projects (
project_id INT PRIMARY KEY,
title VARCHAR (30),
start_date DATE,
end_date DATE
);

INSERT INTO Projects (project_id, title, start_date, end_date)
VALUES 
(1, 'Website Revamp', '2025-01-10', NULL),
(2, 'Mobile App', NULL, '2025-06-01'),
(3, 'Data Migration', NULL, NULL);

SELECT * 
FROM Projects;

-- Q16. Show all projects with a start date. If start_date is NULL, display 'TBD'

SELECT project_id,
       title,
       IFNULL(CAST(start_date AS STRING), 'TBD') AS start_display --- Converts the start date to text and shows 'TBD' when no date is available
FROM Projects;


