SELECT 
DISTINCT(t1.user_id)
FROM amazon_transactions AS t1
JOIN amazon_transactions AS t2
  ON t1.user_id = t2.user_id
WHERE t2.created_at - t1.created_at BETWEEN 0 and 7
  AND t1.id <> t2.id 
