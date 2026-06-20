# SQL E-Commerce Sales Analysis

## Project Overview

This project analyzes e-commerce sales data using SQL to uncover insights related to customer behavior, product performance, and revenue trends. The goal is to transform raw transactional data into actionable business insights that support decision-making.

---

## Business Problem

E-commerce businesses need to understand:

* Who are the highest-value customers?
* Which products generate the most revenue?
* How is revenue distributed across customers and categories?
* Which customer segments contribute most to business growth?
* What opportunities exist to improve retention and profitability?

---

## Dataset Overview

The dataset consists of five business tables:

### Customers

Stores customer information.

### Orders

Contains order-level transaction data.

### Products

Contains product details and categories.

### Order_Items

Links products with orders and quantities purchased.

### Payments

Stores payment-related information.

---

## Data Model

customers
│
└── orders
│
└── order_items
│
└── products

orders
│
└── payments

---

## SQL Skills Demonstrated

* Joins
* Subqueries
* Common Table Expressions (CTEs)
* Window Functions
* Aggregations
* Ranking Functions
* Business Analysis

---

## Analysis Performed

### Revenue Analysis

* Top Customers by Revenue
* Revenue Contribution Percentage
* Customer Revenue Ranking
* Running Revenue Total

### Customer Analysis

* Repeat Customers
* Customers Above Average Revenue
* Customer Segmentation
* Customer Revenue Contribution
* Customer Ranking

### Product Analysis

* Top Products by Revenue
* Product Revenue Ranking
* Top Product per Category
* Category Revenue Analysis
* Products Above Average Revenue

---

## Key Findings

* Revenue is concentrated among a small group of high-value customers.
* Repeat customers contribute significantly more revenue than one-time customers.
* Product performance varies significantly across categories.
* Customer segmentation helps identify valuable customer groups.
* Top-performing products drive a large portion of overall revenue.

---

## Business Recommendations

1. Develop loyalty programs for high-value customers.
2. Improve retention strategies for repeat customers.
3. Focus inventory planning on top-performing products.
4. Use customer segmentation for targeted marketing campaigns.
5. Monitor revenue concentration risk and diversify customer acquisition efforts.

---

## Project Structure

SQL-Ecommerce-Analysis

├── README.md

├── SQL_Queries

│ ├── Revenue_Analysis.sql

│ ├── Customer_Analysis.sql

│ └── Product_Analysis.sql

├── Findings

│ └── Findings.md

└── Recommendations

└── Recommendations.md

---

## Tools Used

* MySQL
* GitHub

---

## Author

Anusha Yaligar
