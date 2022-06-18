/*
Find the review_text that received the highest number of  'cool' votes.
Output the business name along with the review text with the highest numbef of 'cool' votes.
https://platform.stratascratch.com/coding/10060-top-cool-votes
*/

SELECT 
    business_name,
    review_text
FROM yelp_reviews
WHERE cool = (SELECT 
                MAX(cool) 
              FROM yelp_reviews
             )
