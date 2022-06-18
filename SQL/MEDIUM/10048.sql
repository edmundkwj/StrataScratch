/*
Find the top 5 businesses with most reviews. 
Assume that each row has a unique business_id such that the total reviews for each business is listed on each row. 
Output the business name along with the total number of reviews and order your results by the total reviews in descending order.
https://platform.stratascratch.com/coding/10048-top-businesses-with-most-reviews
*/

SELECT
    name, 
    SUM(review_count) AS sum_review
FROM yelp_business
GROUP BY name
ORDER BY sum_review DESC
LIMIT 5

or

SELECT 
    name,
    review_count
FROM(
    SELECT 
        name,
        review_count,
        DENSE_RANK() OVER (ORDER BY review_count DESC) AS sum_review
    FROM yelp_business
    ) AS ranking 
WHERE ranking.sum_review < 6
