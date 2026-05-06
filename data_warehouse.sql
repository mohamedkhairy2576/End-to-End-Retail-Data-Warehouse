-- =========================================
-- 03 - DATA WAREHOUSE (STAR SCHEMA)
-- =========================================

-- DIM PRODUCT
SELECT DISTINCT
    product_id,
    product_name,
    category,
    cost_price,
    selling_price
INTO dim_product
FROM products_raw;


-- DIM CUSTOMER
SELECT DISTINCT
    customer_id,
    customer_name,
    city,
    gender
INTO dim_customer
FROM customers_raw;


-- DIM STORE
SELECT DISTINCT
    store_id,
    store_name,
    city
INTO dim_store
FROM stores_raw;


-- DIM DATE
SELECT DISTINCT
    date AS full_date,
    YEAR(date) AS year,
    MONTH(date) AS month,
    DATENAME(MONTH, date) AS month_name,
    DAY(date) AS day
INTO dim_date
FROM sales_raw;


-- FACT SALES
SELECT 
    s.sales_id,
    s.product_id,
    s.customer_id,
    s.store_id,
    d.full_date,
    s.quantity,
    s.unit_price,
    (s.quantity * s.unit_price) AS sales_amount
INTO fact_sales
FROM sales_raw s
JOIN dim_date d 
    ON s.date = d.full_date;
