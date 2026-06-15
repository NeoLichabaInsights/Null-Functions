-- Databricks notebook source
CREATE TABLE User_Settings (
user_id INT PRIMARY KEY,
theme STRING, 
language STRING, 
timezone STRING
);

INSERT INTO User_Settings (user_id, theme, language, timezone)
VALUES 
(1, NULL, 'English', NULL),
(2, 'Dark', NULL, 'UTC + 1'),
(3, NULL, NULL, NULL);

SELECT * 
FROM User_Settings;

-- Q19. Show all users and their preferences. Replace all NULLs with defaults

SELECT 
    user_id,
    CASE
      WHEN theme IS NULL THEN 'Light'
      ELSE theme
    END AS theme_set,

    CASE
      WHEN language IS NULL THEN 'English'
      ELSE language 
    END AS language_set,

    CASE 
      WHEN timezone IS NULL THEN 'UTC' 
      ELSE timezone
    END AS timezone_set
FROM User_Settings;

