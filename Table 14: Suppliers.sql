-- Databricks notebook source
CREATE OR REPLACE TABLE Suppliers (
    supplier_ID INT PRIMARY KEY,
    name VARCHAR (30),
    phone STRING, -- better stored as a string to allow for characters or leading zeroes
    alt_phone STRING
);

INSERT INTO Suppliers (supplier_ID, name, phone, alt_phone)
VALUES 
(1, 'Global Goods', NULL, 123456789),
(2, 'Best Supplies', 987654321, NULL),
(3, 'Value Source', NULL, NULL);

SELECT *
FROM Suppliers;

-- Q18. Show contact number. USE COALESCE(phone, alt_phone, 'No Contact')

SELECT
    supplier_id,
    name,
    COALESCE(
        CAST(phone AS STRING),
        CAST(alt_phone AS STRING),
        'No Contact'
    ) AS contact_number
FROM Suppliers;

