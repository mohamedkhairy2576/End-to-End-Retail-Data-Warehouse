-- =========================================
-- 04 - ANALYSIS QUERIES
-- =========================================

-- TOTAL SALES
SELECT SUM(sales_amount) AS total_sales
FROM fact_sales;


-- TOP 10 PRODUCTS
SELECT TOP 10 
    p.product_name,
    SUM(f.sales_amount) AS total_sales
FROM fact_sales f
JOIN dim_product p ON f.product_id = p.product_id
GROUP BY p.product_name
ORDER BY total_sales DESC;


-- SALES BY CITY
SELECT 
    s.city,
    SUM(f.sales_amount) AS total_sales
FROM fact_sales f
JOIN dim_store s ON f.store_id = s.store_id
GROUP BY s.city
ORDER BY total_sales DESC;


-- MONTHLY SALES TREND
SELECT 
    d.year,
    d.month,
    SUM(f.sales_amount) AS total_sales
FROM fact_sales f
JOIN dim_date d ON f.full_date = d.full_date
GROUP BY d.year, d.month
ORDER BY d.year, d.month;


-- TOP CUSTOMERS
SELECT TOP 10
    c.customer_name,
    SUM(f.sales_amount) AS total_spent
FROM fact_sales f
JOIN dim_customer c ON f.customer_id = c.customer_id
GROUP BY c.customer_name
ORDER BY total_spent DESC;
