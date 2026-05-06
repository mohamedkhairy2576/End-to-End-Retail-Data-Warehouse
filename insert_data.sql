-- =========================================
-- 02 - INSERT & GENERATE DATA
-- =========================================

-- STORES
INSERT INTO stores_raw (store_id, store_name, city)
VALUES
(1,'Cairo Mall','Cairo'),
(2,'Nasr City','Cairo'),
(3,'Alex Center','Alex'),
(4,'Giza Plaza','Giza'),
(5,'Tanta Hub','Tanta'),
(6,'Mansoura Store','Mansoura'),
(7,'Zagazig Branch','Zagazig'),
(8,'Asyut Mall','Asyut'),
(9,'Luxor Shop','Luxor'),
(10,'Hurghada Store','Hurghada');


-- CUSTOMERS
WITH nums AS (
    SELECT TOP 500 ROW_NUMBER() OVER (ORDER BY (SELECT NULL)) AS n
    FROM sys.objects
)
INSERT INTO customers_raw (customer_id, customer_name, city, gender)
SELECT 
    n,
    CONCAT('Customer_', n),
    CASE 
        WHEN n % 5 = 0 THEN 'Cairo'
        WHEN n % 5 = 1 THEN 'Alex'
        WHEN n % 5 = 2 THEN 'Giza'
        WHEN n % 5 = 3 THEN 'Mansoura'
        ELSE 'Tanta'
    END,
    CASE 
        WHEN n % 2 = 0 THEN 'Male'
        ELSE 'Female'
    END
FROM nums;


-- PRODUCTS
WITH nums AS (
    SELECT TOP 100 ROW_NUMBER() OVER (ORDER BY (SELECT NULL)) AS n
    FROM sys.objects
)
INSERT INTO products_raw (product_id, product_name, category, cost_price, selling_price)
SELECT 
    n,
    CONCAT('Product_', n),
    CASE 
        WHEN n % 4 = 0 THEN 'Electronics'
        WHEN n % 4 = 1 THEN 'Home'
        WHEN n % 4 = 2 THEN 'Beauty'
        ELSE 'Accessories'
    END,
    ROUND(RAND(CHECKSUM(NEWID())) * 100, 2),
    ROUND((RAND(CHECKSUM(NEWID())) * 100) + 50, 2)
FROM nums;


-- SALES
WITH nums AS (
    SELECT TOP 10000 ROW_NUMBER() OVER (ORDER BY (SELECT NULL)) AS n
    FROM sys.objects a CROSS JOIN sys.objects b
)
INSERT INTO sales_raw (sales_id, product_id, customer_id, store_id, date, quantity, unit_price)
SELECT 
    n,
    ABS(CHECKSUM(NEWID())) % 100 + 1,
    ABS(CHECKSUM(NEWID())) % 500 + 1,
    ABS(CHECKSUM(NEWID())) % 10 + 1,
    DATEADD(DAY, -ABS(CHECKSUM(NEWID())) % 365, GETDATE()),
    ABS(CHECKSUM(NEWID())) % 5 + 1,
    ROUND(RAND(CHECKSUM(NEWID())) * 200, 2)
FROM nums;
