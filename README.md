# 📊 SQL Task 3 – E-Commerce Data Analysis (MySQL)

A clean and elegant SQL project analyzing an E-commerce retail dataset using MySQL.  
This project demonstrates database creation, CSV import, SQL analysis, grouping, aggregation, indexing, and generating a final PDF report.

---

## 📚 Table of Contents
1. [Project Overview](#-project-overview)
2. [Project Structure](#-project-structure)
3. [Dataset Description](#-dataset-description)
4. [How to Run This Project](#-how-to-run-this-project)
5. [SQL Queries Included](#-sql-queries-included)
6. [Output Screenshots](#-output-screenshots)
7. [Final Report](#-final-report)
8. [Tools Used](#-tools-used)
9. [Author](#-author)
10. [Summary](#-summary)

---

## 📘 Project Overview
This project focuses on performing SQL-based data analysis on an E-commerce transactions dataset.  
The main tasks performed:

- Creating database & tables  
- Importing the dataset using `LOAD DATA LOCAL INFILE`  
- Fixing encoding and date formats  
- Running analysis queries (revenue, monthly trends, country insights)  
- Creating indexes for performance  
- Preparing a professional final PDF report

---

---

## 🗂️ Dataset Description
The dataset contains thousands of real retail transactions including:

| Column        | Description                       |
|---------------|-----------------------------------|
| InvoiceNo     | Unique invoice number             |
| StockCode     | Product code                      |
| Description   | Product name/description          |
| Quantity      | Quantity purchased                |
| InvoiceDate   | Date & time of transaction        |
| UnitPrice     | Price per unit                    |
| CustomerID    | Customer identifier               |
| Country       | Customer's country                |

➡️ The dataset is provided as **`ecommerce.zip`** (to keep file size below GitHub limit).  
Extract the ZIP to get `ecommerce.csv`.

---

## ▶️ How to Run This Project

1. Open **MySQL Workbench**  
2. Open the file:  
3. Update this line with your correct file path:
4. 4. Run queries in order  
5. Verify data:  


You are ready for analysis!

---

## 🛠 SQL Queries Included

### ✔ Database Setup  
- `CREATE DATABASE ECCOMERCE;`  
- `USE ECCOMERCE;`

### ✔ Table Creation  
- Correct datatypes for each column  

### ✔ CSV Import  
- Encoding fix using `CHARACTER SET latin1`  
- Windows line ending support  
- Date parsing using `STR_TO_DATE`

### ✔ Data Validation  
- Row count  
- Preview sample data  

### ✔ Analysis Queries  
- Total revenue  
- Monthly revenue  
- Top countries by revenue  

### ✔ Optimization  
- Index on `InvoiceDate`  
- Index on `Country`

---

## 📸 Output Screenshots

### 1️⃣ Database Creation & CSV Load
![Screenshot 1](screenshots/screenshot1.png)

### 2️⃣ Sample Data (SELECT * LIMIT 10)
![Screenshot 2](screenshots/screenshot2.png)

### 3️⃣ Total Revenue
![Screenshot 3](screenshots/screenshot3.png)

### 4️⃣ Monthly Revenue
![Screenshot 4](screenshots/screenshot4.png)

### 5️⃣ Top Countries by Revenue
![Screenshot 5](screenshots/screenshot5.png)

---

## 📄 Final Report
A professional PDF combining queries + outputs + screenshots:

📎 **SQL_Task3_Final_Elegant_Report.pdf**

---

## ⚙️ Tools Used
- MySQL Server  
- MySQL Workbench  
- ReportLab (for PDF)  
- GitHub  
- Windows Environment  

---

## 👩‍💻 Author  
**Anusha Yaligar**  
Data Analytics | SQL | MySQL | Python  

---

## ⭐ Summary
This project demonstrates a full SQL workflow:

✔ Importing large datasets  
✔ Cleaning and transforming data  
✔ Performing SQL-based analysis  
✔ Creating optimized indexes  
✔ Documenting results in a professional report  
✔ Publishing the project in a structured GitHub repository  

A perfect end-to-end SQL learning & showcase project for a Data Analyst role.



## 📁 Project Structure

