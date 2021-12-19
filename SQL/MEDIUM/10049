SELECT 
UNNEST(string_to_array(categories, ';')) AS category, 
SUM(review_count) as total_review
FROM yelp_business
GROUP BY category
ORDER BY total_review DESC
