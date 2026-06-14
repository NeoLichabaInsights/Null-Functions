-- Databricks notebook source
CREATE TABLE Classes (
    class_ID INT PRIMARY KEY, 
    subject VARCHAR (20), 
    room VARCHAR (20)
    );

INSERT INTO Classes (class_id, subject, room)
VALUES 
(11, 'Math', NULL),
(12, 'Science', 'Lab A'),
(13, 'English', NULL );

-- Q13. Count classes that don't have a room assigned

SELECT COUNT (*) AS no_room_count
FROM Classes
WHERE room IS NULL;
