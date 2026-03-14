CREATE TABLE customer_segments AS 
SELECT 
customer_id,
r_score,
f_score,
m_score,

CASE

WHEN r_score >= 4 AND f_score >= 4 AND m_score >=4
     THEN 'champion'
WHEN r_score >= 3 AND f_score >= 4 AND m_score >=3
     THEN 'loyal_customer'
WHEN r_score >= 4 AND f_score BETWEEN 2 AND 3
     THEN 'potential_loyalist'
WHEN r_score >= 5 AND f_score = 1
     THEN 'new_customer'
WHEN r_score >= 4 AND f_score >= 1
     THEN 'promising'
WHEN r_score >= 3 AND f_score BETWEEN 2 AND 3 
     THEN 'need_attention'
WHEN r_score <= 2 AND f_score >=4 
     THEN 'cannot_lose_them'
WHEN r_score <= 2 AND f_score BETWEEN 2 AND 3
    THEN 'At Risk'

WHEN r_score <= 2 AND f_score <= 1
    THEN 'Lost Customers'

ELSE 'Other'

END AS customer_segment

FROM rfm_scores;