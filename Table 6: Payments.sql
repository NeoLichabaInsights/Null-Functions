-- Databricks notebook source
CREATE TABLE Payments (
    ayment_id INT PRIMARY KEY, 
    method STRING, 
    status VARCHAR(20)
    );

INSERT INTO Payments (payment_id, method, status)
  VALUES 
   (301, 'Credit', NULL),
   (302, 'PayPal', 'Success'), 
   (303, NULL, 'Failed');

SELECT
  *
FROM
  Payments;

-- Q10. Show payment details with method replaced by "Unknown" if NULL
SELECT
  payment_id,
  status,
  IFNULL(method, 'Unknown') AS method_display
FROM
  Payments;
