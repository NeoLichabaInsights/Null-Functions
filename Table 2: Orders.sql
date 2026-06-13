-- Databricks notebook source
-- DROP TABLE IF EXISTS workspace.default.orders;
-- SHOW TABLES IN workspace.default LIKE 'orders';
CREATE OR REPLACE TABLE Orders (
  order_id int NOT NULL,
  customer_id int,
  delivery_date date,
  PRIMARY KEY (order_id)
);

INSERT INTO Orders (order_id, customer_id, delivery_date)
  VALUES (101, 201, '2024-12-01'), 
  (102, 202, NULL), 
  (103, NULL, '2024-12-03');

-- Select all columns to see input into tables
SELECT
  *
FROM
  orders;

-- Q3. Find orders with NULL customer_id using ISNULL()
SELECT
  customer_id,
  order_id
FROM
  orders
WHERE
  customer_id IS NULL;

-- Q4. Show all orders. If delivery_date is NULL, show 'Pending'
SELECT
  order_id,
  customer_id,
  delivery_date,
  CASE -- Use Case Statement to build in conditions
    WHEN delivery_date IS NULL THEN 'Pending'
    ELSE 'Delivered'
  END AS delivery_status
FROM
  Orders;
