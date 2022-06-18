/*
Find the top 5 states with the most 5 star businesses. 
Output the state name along with the number of 5-star businesses and order records by the number of 5-star businesses in descending order. In case there are ties in the number of businesses, return all the unique states. 
If two states have the same result, sort them in alphabetical order.
https://platform.stratascratch.com/coding/10046-top-5-states-with-5-star-businesses
*/

WITH answer AS (
SELECT 
    state, 
    COUNT(stars) AS numberof5stars, 
    RANK() OVER(ORDER BY count(stars) DESC) AS rank
FROM yelp_business
WHERE stars = 5
GROUP BY state
ORDER BY numberof5stars DESC
)
    
SELECT 
    state, 
    numberof5stars
FROM answer
WHERE rank <= 5

OR 

SELECT 
    state, 
    COUNT(stars) AS numberof5stars
FROM yelp_business
WHERE stars = 5
GROUP BY state
ORDER BY numberof5stars DESC
LIMIT 6