-- Databricks notebook source
CREATE OR REPLACE TABLE Students (
    student_id int PRIMARY KEY, 
    name VARCHAR(20), 
    grade INT
    );

-- SHOW TABLES IN workspace.default LIKE 'students';
INSERT INTO Students (student_id, name, grade)
  VALUES 
  (1, 'Ethan', 85), 
  (2, 'Maya', NULL), 
  (3, 'Olivia', 90);

-- Check the entire table
SELECT
  *
FROM
  Students;

-- Q5. Show all students and their grades. Replace NULL with 0.
SELECT
  student_id,
  name,
  IFNULL(grade, 0) AS final_grade
FROM
  Students;

-- Q6. Count students who haven't been graded
SELECT
  COUNT(*) AS not_graded_count
FROM
  Students
WHERE
  grade IS NULL;
