# 🛒 Retail Data Warehouse & Sales Analytics (SQL Server)

## 📌 Project Overview

This project demonstrates an end-to-end **Data Analytics workflow** using **SQL Server**, where raw retail data is transformed into a structured **Data Warehouse (Star Schema)** to enable powerful business insights.

The project simulates a real-world retail environment including **sales, customers, products, and stores**, and showcases how data can be cleaned, transformed, and analyzed efficiently.

---

## 🎯 Objectives

* Build a **Data Warehouse** using Star Schema
* Perform **ETL (Extract, Transform, Load)** using SQL
* Generate **analytical insights** from retail data
* Practice **advanced SQL techniques** used in real business scenarios

---

## 🧱 Data Architecture

The project follows a layered architecture:

### 🔹 1. Raw Layer (Staging)

Contains raw generated data:

* `sales_raw`
* `products_raw`
* `customers_raw`
* `stores_raw`

---

### 🔹 2. Data Warehouse Layer (Star Schema)

#### 📊 Fact Table:

* `fact_sales`

#### 📦 Dimension Tables:

* `dim_product`
* `dim_customer`
* `dim_store`
* `dim_date`

---

## ⚙️ ETL Process

The ETL process includes:

* Data generation using SQL
* Data cleaning and transformation
* Removing duplicates
* Creating derived columns (e.g., `sales_amount`)

---

## 📊 Key Analysis Performed

* 💰 Total Sales Calculation
* 🥇 Top Selling Products
* 🌍 Sales by City
* 📅 Monthly Sales Trends
* 👤 Top Customers

---

## 🧠 Sample Business Questions

* What are the top-performing products?
* Which cities generate the highest revenue?
* Who are the most valuable customers?
* How do sales change over time?

---

## 🛠️ Tools & Technologies

* Microsoft SQL Server
* T-SQL (Transact-SQL)
* Data Warehousing Concepts

---

## 📂 Project Structure

```
retail-data-warehouse-sql/
│
├── 01_create_tables.sql
├── 02_insert_data.sql
├── 03_data_warehouse.sql
├── 04_analysis.sql
│
└── README.md
```

---

## 🚀 How to Run

1. Open SQL Server Management Studio (SSMS)
2. Run scripts in order:

```
01_create_tables.sql
02_insert_data.sql
03_data_warehouse.sql
04_analysis.sql
```

---

## 📈 Future Improvements

* Add **Profit & Margin KPIs**
* Build **Power BI Dashboard**
* Optimize performance using **Indexes**
* Add **Stored Procedures & Views**

---

## 💡 Key Learnings

* Designing a **Star Schema**
* Writing efficient SQL queries
* Using **Window Functions & Aggregations**
* Translating data into business insights

---

## 👤 Author

**Mohamed Khairy**
Data Analyst

---

## ⭐ If you found this project useful

Feel free to ⭐ the repository and share your feedback!
