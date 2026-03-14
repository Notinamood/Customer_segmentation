CREATE TABLE rfm_scores AS
SELECT
    customer_id,
    
    NTILE(5) OVER (ORDER BY recency DESC) AS r_score,
    
    NTILE(5) OVER (ORDER BY frequency) AS f_score,
    
    NTILE(5) OVER (ORDER BY monetary) AS m_score

FROM rfm_metrics;