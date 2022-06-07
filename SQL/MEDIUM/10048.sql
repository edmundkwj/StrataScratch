SELECT
name, 
SUM(review_count)
FROM yelp_business
GROUP BY name
ORDER BY 2 DESC
LIMIT 5
