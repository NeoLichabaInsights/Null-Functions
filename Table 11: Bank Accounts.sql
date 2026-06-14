-- Databricks notebook source
CREATE TABLE Bank_Accounts (
    account_ID STRING, 
    account_type VARCHAR(10),
    balance DECIMAL(10,0)
    );
    
INSERT INTO Bank_Accounts (account_ID, account_type, balance)
VALUES 
('A1', 'Savings', NULL),
('A2', 'Current', 5000),
('A3', NULL, 2000);

SELECT *
FROM Bank_Accounts;

-- Q15. Show account_id, account_type (of 'Unknown'), and balance (or 0)
SELECT account_ID,
       IFNULL(account_type, 'Unknown') AS type_display,
       IFNULL(balance, 0) AS balance_checked
FROM Bank_Accounts;
