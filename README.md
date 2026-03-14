#  Customer Segmentation Using RFM Analysis

![Python](https://img.shields.io/badge/Python-Data%20Analysis-blue)
![PostgreSQL](https://img.shields.io/badge/PostgreSQL-SQL%20Analytics-blue)
![Tableau](https://img.shields.io/badge/Tableau-Data%20Visualization-orange)
![Status](https://img.shields.io/badge/Project-End--to--End%20Analytics-success)

---

#  Project Overview

This project analyzes customer purchasing behavior from an e-commerce dataset using **RFM (Recency, Frequency, Monetary) analysis** to segment customers into meaningful groups.

The goal is to transform raw transactional data into **business insights** that help companies:

- identify **high-value customers**
- detect **customers at risk of churn**
- improve **marketing strategies**
- increase **customer lifetime value**

The project demonstrates a **complete data analytics workflow** including:

 Data profiling  
 Data cleaning  
 SQL analytics  
 Customer segmentation  
 Interactive dashboard creation  

---

#  Project Goals

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

#  Dataset Overview

The dataset used in this project is the **Online Retail II dataset**, containing transactional data from a UK-based online retail store.
Dataset link : https://www.kaggle.com/datasets/mashlyn/online-retail-ii-uci?resource=download

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

#  Data Profiling

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

#  Data Cleaning & Feature Engineering

Data cleaning was performed using **Python (Pandas)**.

### Cleaning Steps

 Removed rows with **missing customer IDs**  
 Removed **duplicate records**  
 Removed **negative quantities (returns)**  
 Removed **cancelled invoices**  
 Removed **zero-price transactions**

These steps ensured the dataset only contained **valid purchase transactions**.

---

#  Feature Engineering

A new feature was created:

### Revenue

This feature represents the **total monetary value of each transaction**.

It is essential for calculating the **Monetary component of RFM analysis**.

---

# Cleaned Dataset Overview

After cleaning, the dataset contains only **valid customer purchase records**.

### Improvements

 Accurate revenue calculations  
 Valid customer transactions only  
 No duplicates or invalid rows  
 Ready for SQL analytics  

The cleaned dataset was stored in **PostgreSQL** for further analysis.

---

#  SQL Analytics

PostgreSQL was used to perform customer analytics and compute the **RFM metrics**.

SQL allows efficient analysis of large datasets through **aggregation and window functions**.

---

#  RFM Metrics Calculation

Three metrics were calculated for each customer:

| Metric | Definition |
|------|------------|
Recency | Days since last purchase |
Frequency | Number of purchases |
Monetary | Total spending |

### Example SQL Logic
Recency = reference_date - last_purchase_date
Frequency = COUNT(DISTINCT invoice)
Monetary = SUM(revenue)

These metrics help measure **customer engagement and value**.

---

#  RFM Scoring

Customers were ranked using SQL window functions.

Example:

This divides customers into **five groups based on behavior**.

Each metric receives a score between **1 and 5**.

---

#  Customer Segmentation

Based on RFM scores, customers were classified into business segments.

### Customer Segments

| Segment | Description |
|------|-------------|
Champions | Best and most valuable customers |
Loyal Customers | Frequent buyers |
Potential Loyalists | Customers with growth potential |
New Customers | Recently acquired customers |
At Risk | Previously active but declining |
Lost Customers | Inactive customers |

These segments help companies understand **customer behavior and engagement**.

---

#  Final Analytics Dataset

A final dataset called **rfm_dashboard** was created by combining customer segments with transaction data.

### Fields Included

| Field | Description |
|------|-------------|
customer_id | Customer identifier |
customer_segment | RFM segment |
total_spent | Total revenue generated |
total_orders | Number of purchases |
country | Customer location |
last_purchase | Most recent purchase |

This dataset powers the **Tableau dashboard**.

---

#  Tableau Dashboard

The final stage of the project was building an **interactive Tableau dashboard**.

## Dashboard Preview

![Dashboard](Dashboard/Dashboard%201.png)

---

# Interactive Dashboard

Explore the full interactive dashboard: 

 **TABLEAU_LINK**

Example:
https://public.tableau.com/views/CustomersegmentationusingRFMcalculation/Dashboard1?:language=en-GB&:sid=&:redirect=auth&:display_count=n&:origin=viz_share_link


---

#  Dashboard Visualizations

The dashboard includes:

 - Customer segment distribution  
 - Revenue contribution by segment  
 - Orders by segment  
 - Revenue by country  
 - Average customer value  

Filters allow users to **interactively explore customer behavior**.

---

#  Key Business Insights

1️ **Champions generate the highest revenue**, highlighting the importance of retaining high-value customers.

2️ **Loyal customers provide consistent repeat purchases**, representing stable long-term revenue.

3️ A portion of customers fall into the **At Risk category**, indicating potential churn.

4️ **Lost customers represent inactive users**, suggesting opportunities for re-engagement campaigns.

---

#  Business Recommendations

Based on the analysis:

 Implement **loyalty programs** for Champion customers  
 Target **At Risk customers** with personalized promotions  
 Encourage Loyal customers to increase spending through upselling  
 Launch **win-back campaigns** for Lost customers  

These strategies help improve **customer retention and revenue growth**.

---

#  Tools Used

| Tool | Purpose |
|------|--------|
Python | Data profiling & cleaning |
PostgreSQL | Data storage & SQL analysis |
SQL | RFM calculation & segmentation |
Tableau | Data visualization |

---

#  Project Workflow
- Raw Dataset
- Data Profiling (Python)
- Data Cleaning & Feature Engineering
- PostgreSQL Database
- SQL RFM Analysis
- Customer Segmentation
- Tableau Dashboard


---

#  Conclusion

This project demonstrates how **data analytics transforms raw transactional data into actionable business insights**.

By applying **RFM analysis**, businesses can:

- identify valuable customers
- reduce churn risk
- improve marketing efficiency
- increase customer lifetime value

The project highlights the importance of **data-driven decision making in modern businesses**.
