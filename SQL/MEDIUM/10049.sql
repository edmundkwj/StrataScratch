/*
Find the top business categories based on the total number of reviews. 
Output the category along with the total number of reviews. 
Order by total reviews in descending order
https://platform.stratascratch.com/coding/10049-reviews-of-categories
*/


SELECT 
    UNNEST(string_to_array(categories, ';')) AS category, 
    SUM(review_count) as total_review
FROM yelp_business
GROUP BY category
ORDER BY total_review DESC
