# E-commerce Sales Analysis (SQL Project)

## 📌 Project Overview
This project demonstrates the use of **SQL** for analyzing an e-commerce database.  
The dataset simulates customer purchases, orders, payments, and product details.  
The goal is to run analytical queries to extract insights such as customer spending patterns, sales trends, and top products by revenue.

---

## 📂 Project Structure
project/
│
├── data/
│   ├── schema.sql              # Database schema (tables & relationships)
│   ├── data.sql                # Sample data inserts
│
├── queries/
│   ├── customer_churn.sql       # Query to identify inactive customers
│   ├── high_value_customers.sql # Query for top spending customers
│   ├── inventory_status.sql     # Query to check stock status
│   ├── monthly_status.sql       # Query for monthly sales/orders
│   ├── revenue_per_customer.sql # Query for revenue by customer
│   ├── top_products.sql         # Query for best-selling products
│
├── outputs/
│   ├── customer_churn.txt       
│   ├── high_value_customers.txt 
│   ├── inventory_status.txt     
│   ├── monthly_status.txt       
│   ├── revenue_per_customer.txt 
│   ├── top_products.txt         
│
└── README.md                    # Project documentation




---

## 🛠️ Database Schema
The database contains the following main tables:

- **Customers** → Customer details  
- **Products** → Product information  
- **Orders** → Orders placed by customers  
- **OrderDetails** → Items included in each order  
- **Payments** → Transaction records  

---

## 📊 Implemented Queries
Some examples of the queries included:
- Customers who haven’t placed orders recently  
- Top spending customers  
- Sales trends by month  
- Revenue per customer  
- Best-selling products  

(All queries are stored in the `queries/` folder with results in `outputs/`.)

---

## 🚀 How to Run
1. Install [SQLite](https://www.sqlite.org/download.html) (or use another SQL engine).  
2. Create a database and load schema & data:
   ```bash
   sqlite3 ecommerce.db < data/schema.sql
   sqlite3 ecommerce.db < data/data.sql

