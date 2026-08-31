-- Databricks notebook source
SELECT 
    transaction_id,
    transaction_date,
    transaction_time,
    transaction_qty,
    store_id,
    store_location,
    product_id,
    product_category,
    product_type,
    product_detail,
    CAST(REPLACE(unit_price, ',', '.') AS DECIMAL(10,2)) AS Unit_price_standardized,
    CAST(REPLACE(unit_price, ',', '.') AS DECIMAL(10,2)) * transaction_qty AS total_amount,
    DATE_FORMAT(transaction_date, 'EEEE') AS Day_Name,
    DATE_FORMAT(transaction_date, 'MMMM') AS Month_Name,
    YEAR(transaction_date)  AS Event_Year,
    DAY(transaction_date)   AS Event_Day,
    HOUR(transaction_time)  AS Hour_of_the_Day,
    CASE 
        WHEN DATE_FORMAT(transaction_date, 'EEEE') IN ('Saturday', 'Sunday') THEN 'Weekend'
        ELSE 'Weekday'
    END AS Day_Classification,
    CASE 
        WHEN HOUR(transaction_time) BETWEEN 0  AND 2  THEN '00:00-02:59 (Midnight)'
        WHEN HOUR(transaction_time) BETWEEN 3  AND 5  THEN '03:00-05:59 (Early Morning)'
        WHEN HOUR(transaction_time) BETWEEN 6  AND 8  THEN '06:00-08:59 (Morning)'
        WHEN HOUR(transaction_time) BETWEEN 9  AND 11 THEN '09:00-11:59 (Late Morning)'
        WHEN HOUR(transaction_time) BETWEEN 12 AND 14 THEN '12:00-14:59 (Afternoon)'
        WHEN HOUR(transaction_time) BETWEEN 15 AND 17 THEN '15:00-17:59 (Late Afternoon)'
        WHEN HOUR(transaction_time) BETWEEN 18 AND 20 THEN '18:00-20:59 (Evening)'
        WHEN HOUR(transaction_time) BETWEEN 21 AND 23 THEN '21:00-23:59 (Night)'
    END AS Time_Bucket,
    CASE
        WHEN HOUR(transaction_time) BETWEEN 0  AND 2  THEN 'Midnight'
        WHEN HOUR(transaction_time) BETWEEN 3  AND 5  THEN 'Early Morning'
        WHEN HOUR(transaction_time) BETWEEN 6  AND 8  THEN 'Morning'
        WHEN HOUR(transaction_time) BETWEEN 9  AND 11 THEN 'Late Morning'
        WHEN HOUR(transaction_time) BETWEEN 12 AND 14 THEN 'Afternoon'
        WHEN HOUR(transaction_time) BETWEEN 15 AND 17 THEN 'Late Afternoon'
        WHEN HOUR(transaction_time) BETWEEN 18 AND 20 THEN 'Evening'
        WHEN HOUR(transaction_time) BETWEEN 21 AND 23 THEN 'Night'
    END AS Time_Period
FROM coffee_shop.coffee_data.bright_coffee_dataset;