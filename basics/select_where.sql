-- ============================================ -- 
SQL BASICS:
SELECT
    and
WHERE -- 
    Author: Sanskriti Thombare -- Date: June 2026 -- 
    Source: Mode Analytics Tutorial --
================================= -- 
    Basic
SELECT
SELECT *
FROM orders;
-- Select specific columns 
SELECT order_id,
    customer_id,
    order_date,
    total_amount
FROM orders;
-- WHERE clause filter SELECT * FROM orders WHERE status = 'completed'; 
-- ============================================ 
-- DATA VALIDATION USE CASE (Real QA examples) -- 
== == == == == == == == == == == == == == == == == == == == == == -- 
Check for NULL
values in critical columns
SELECT COUNT(*) AS total_rows,
    COUNT(order_id) AS non_null_ids,
    COUNT(*) - COUNT(order_id) AS null_count
FROM orders;
-- Find rows where critical data is missing 
SELECT *
FROM orders
WHERE order_id IS NULL
    OR customer_id IS NULL
    OR order_date IS NULL;