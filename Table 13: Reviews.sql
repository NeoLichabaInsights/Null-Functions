-- Databricks notebook source
CREATE OR REPLACE TABLE Reviews (
    review_id INT NOT NULL,
    product_id INT,
    comment VARCHAR (30),
    rating INT,
    PRIMARY KEY (review_id)
);

INSERT INTO Reviews (review_id, product_id,comment,rating)
VALUES 
(1, 501, 'Great product', 4),
(2, 502, NULL, NULL),
(3, 503, 'Works fine', 3);

SELECT *
FROM Reviews;

-- Q17. Display reviews showing comment (or 'No Comment') and rating (or 0)
SELECT review_id, 
       product_id,
       IFNULL(comment, 'No Comment') AS comment_display,
       IFNULL(rating, 0) AS rating_display
FROM Reviews;


