SELECT
customer_id,
r_score,
f_score,
m_score,
(r_score ::text || f_score ::text || m_score ::text) AS rfm_segment
FROM rfm_scores
LIMIT 20;