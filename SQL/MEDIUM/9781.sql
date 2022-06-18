/*
Find the rate of processed tickets for each type.
https://platform.stratascratch.com/coding/9781-find-the-rate-of-processed-tickets-for-each-type
*/

SELECT
    type,
    SUM(processed)/COUNT(*) AS processed_rate
FROM facebook_complaints
GROUP BY type
