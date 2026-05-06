-- =========================================
-- 01 - CREATE RAW TABLES
-- =========================================

CREATE TABLE sales_raw (
    sales_id INT,
    product_id INT,
    customer_id INT,
    store_id INT,
    date DATE,
    quantity INT,
    unit_price DECIMAL(10,2)
);

CREATE TABLE products_raw (
    product_id INT,
    product_name VARCHAR(100),
    category VARCHAR(50),
    cost_price DECIMAL(10,2),
    selling_price DECIMAL(10,2)
);

CREATE TABLE customers_raw (
    customer_id INT,
    customer_name VARCHAR(100),
    city VARCHAR(50),
    gender VARCHAR(10)
);

CREATE TABLE stores_raw (
    store_id INT,
    store_name VARCHAR(100),
    city VARCHAR(50)
);
