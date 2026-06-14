-- Databricks notebook source
CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,
    name VARCHAR (20),
    email VARCHAR (100)
);

INSERT INTO Customers (customer_id, name, email)
VALUES 
(1, 'Linda', NULL),
(2, 'Joseph', 'joseph@mail.com'),
(3, 'Nia', NULL);

SELECT *
FROM Customers;

--Q8. Count how many customers have no email

SELECT COUNT (*) AS missing_email_count
FROM Customers
WHERE email IS NULL; 

-- Q9. Show all customers with email. IF NULL, display "No Email"

SELECT customer_id, 
       name,
       IFNULL(email, 'No Email') AS email_display
FROM Customers;
