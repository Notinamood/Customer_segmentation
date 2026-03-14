# 📊 Customer Segmentation Using RFM Analysis

![Python](https://img.shields.io/badge/Python-Data%20Analysis-blue)
![PostgreSQL](https://img.shields.io/badge/PostgreSQL-SQL%20Analytics-blue)
![Tableau](https://img.shields.io/badge/Tableau-Data%20Visualization-orange)
![Status](https://img.shields.io/badge/Project-End--to--End%20Analytics-success)

---

# 🧭 Project Overview

This project analyzes customer purchasing behavior from an e-commerce dataset using **RFM (Recency, Frequency, Monetary) analysis** to segment customers into meaningful groups.

The goal is to transform raw transactional data into **business insights** that help companies:

- identify **high-value customers**
- detect **customers at risk of churn**
- improve **marketing strategies**
- increase **customer lifetime value**

The project demonstrates a **complete data analytics workflow** including:

✔ Data profiling  
✔ Data cleaning  
✔ SQL analytics  
✔ Customer segmentation  
✔ Interactive dashboard creation  

---

# 🎯 Project Goals

The main objectives of this analysis are:

- Understand customer purchasing behavior  
- Identify **high-value customers (Champions)**  
- Detect **customers at risk of churn**  
- Analyze **revenue contribution by customer segment**  
- Provide **data-driven recommendations** for business growth  

Companies can use these insights to:

- improve customer retention
- optimize marketing budgets
- increase revenue from existing customers

---

# 📦 Dataset Overview

The dataset used in this project is the **Online Retail II dataset**, containing transactional data from a UK-based online retail store.

## Dataset Features

| Column | Description |
|------|-------------|
| Invoice | Unique transaction identifier |
| StockCode | Product identifier |
| Description | Product description |
| Quantity | Number of units purchased |
| InvoiceDate | Date and time of transaction |
| Price | Price per unit |
| Customer ID | Unique customer identifier |
| Country | Customer location |

### Dataset Characteristics

| Metric | Value |
|------|------|
Total Transactions | ~1,000,000+ |
Time Period | 2009 – 2011 |
Geography | Multiple countries |

This dataset provides a strong foundation for analyzing customer purchasing patterns and building segmentation models.

---

# 🔎 Data Profiling

Before cleaning the dataset, an initial **data profiling phase** was performed using Python.

### Key checks performed

- Dataset structure and size
- Column data types
- Missing values
- Duplicate records
- Negative quantities (returns)
- Cancelled invoices
- Zero-price transactions

### Issues Identified

| Issue | Impact |
|------|-------|
Missing Customer IDs | Cannot assign purchases to customers |
Duplicate rows | Inflates revenue and order counts |
Negative quantities | Product returns |
Cancelled invoices | Invalid transactions |
Zero price transactions | Incorrect revenue calculations |

These issues were resolved during the **data cleaning stage**.

---

# 🧹 Data Cleaning & Feature Engineering

Data cleaning was performed using **Python (Pandas)**.

### Cleaning Steps

✔ Removed rows with **missing customer IDs**  
✔ Removed **duplicate records**  
✔ Removed **negative quantities (returns)**  
✔ Removed **cancelled invoices**  
✔ Removed **zero-price transactions**

These steps ensured the dataset only contained **valid purchase transactions**.

---

# ⚙️ Feature Engineering

A new feature was created:

### Revenue
