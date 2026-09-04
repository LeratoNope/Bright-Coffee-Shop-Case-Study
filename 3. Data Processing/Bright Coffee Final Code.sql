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

    CASE DATE_FORMAT(transaction_date, 'MMMM')
        WHEN 'January'   THEN 1
        WHEN 'February'  THEN 2
        WHEN 'March'     THEN 3
        WHEN 'April'     THEN 4
        WHEN 'May'       THEN 5
        WHEN 'June'      THEN 6
        WHEN 'July'      THEN 7
        WHEN 'August'    THEN 8
        WHEN 'September' THEN 9
        WHEN 'October'   THEN 10
        WHEN 'November'  THEN 11
        WHEN 'December'  THEN 12
    END AS Month_Sort_Order,

    YEAR(transaction_date)  AS Event_Year,
    DAY(transaction_date)   AS Event_Day,

    HOUR(transaction_time)  AS Hour_of_the_Day,

    CASE 
        WHEN DATE_FORMAT(transaction_date, 'EEEE') IN ('Saturday', 'Sunday') THEN 'Weekend'
        ELSE 'Weekday'
    END AS Day_Classification,

    CASE DATE_FORMAT(transaction_date, 'EEEE')
        WHEN 'Monday'    THEN 1
        WHEN 'Tuesday'   THEN 2
        WHEN 'Wednesday' THEN 3
        WHEN 'Thursday'  THEN 4
        WHEN 'Friday'    THEN 5
        WHEN 'Saturday'  THEN 6
        WHEN 'Sunday'    THEN 7
    END AS Day_Sort_Order,

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
    END AS Time_Period,

    CASE
        WHEN HOUR(transaction_time) BETWEEN 0  AND 2  THEN 1
        WHEN HOUR(transaction_time) BETWEEN 3  AND 5  THEN 2
        WHEN HOUR(transaction_time) BETWEEN 6  AND 8  THEN 3
        WHEN HOUR(transaction_time) BETWEEN 9  AND 11 THEN 4
        WHEN HOUR(transaction_time) BETWEEN 12 AND 14 THEN 5
        WHEN HOUR(transaction_time) BETWEEN 15 AND 17 THEN 6
        WHEN HOUR(transaction_time) BETWEEN 18 AND 20 THEN 7
        WHEN HOUR(transaction_time) BETWEEN 21 AND 23 THEN 8
    END AS Time_Period_Sort_Order

FROM coffee_shop.coffee_data.bright_coffee_dataset;