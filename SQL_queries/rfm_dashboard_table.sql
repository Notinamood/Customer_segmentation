CREATE TABLE rfm_dashboard AS
SELECT
r.customer_id,
cs.customer_segment,
SUM(r.revenue) AS total_spent,
COUNT(DISTINCT r.invoice) AS total_orders,
MAX(r.invoicedate) AS last_purchase
FROM online_retail_clean r
JOIN customer_segments cs
ON r.customer_id = cs.customer_id
GROUP BY r.customer_id, cs.customer_segment;