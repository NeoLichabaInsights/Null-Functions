-- Databricks notebook source
CREATE TABLE Inventory (
    item_id INT PRIMARY KEY, 
    item_name VARCHAR(20), 
    quantity INT
    );

INSERT INTO Inventory (item_id, item_name,quantity)
VALUES 
(1, 'Pen', NULL),
(2, 'Notebook', 150),
(3, 'Eraser', NULL );

-- Q11. Show items and their quantity (0 if NULL)

SELECT item_id, 
       item_name,
       IFNULL(quantity,0) AS quantity_checked
FROM Inventory;

