WITH answer AS (
SELECT 
state, 
count(state) as numberof5stars, 
RANK() OVER(ORDER BY count(state) DESC) AS rank
FROM yelp_business
WHERE stars = 5
GROUP BY state
ORDER BY numberof5stars DESC)
    
SELECT 
state, 
numberof5stars
FROM answer
WHERE rank <= 5
