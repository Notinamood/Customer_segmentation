CREATE TABLE rfm_metrics AS 
SELECT 
   customer_id,
   DATE('2011-12-09') - MAX(invoicedate) AS recency,
   COUNT(DISTINCT invoice) AS frequency ,
   SUM(revenue) AS monetary
FROM online_retail_clean
GROUP BY customer_id