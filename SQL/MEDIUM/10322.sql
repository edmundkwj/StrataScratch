/*
Write a query that'll identify returning active users. 
A returning active user is a user that has made a second purchase within 7 days of any other of their purchases. 
Output a list of user_ids of these returning active users.
https://platform.stratascratch.com/coding/10322-finding-user-purchases
*/

SELECT 
    DISTINCT
    t1.user_id
FROM amazon_transactions AS t1
JOIN amazon_transactions AS t2
  ON t1.user_id = t2.user_id
WHERE ABS(DATEDIFF(t2.created_at, t1.created_at)) BETWEEN 0 AND 7
 AND t1.id <> t2.id

