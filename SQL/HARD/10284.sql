with cte as (
    SELECT 
    user1,
    user2
    FROM facebook_friends
    UNION
    SELECT 
    user2 AS user1,
    user1 AS user2
    FROM facebook_friends
)

SELECT
user1,
COUNT(DISTINCT user2)::decimal / (SELECT COUNT(DISTINCT user1) FROM cte) * 100 
AS percentage
FROM cte
GROUP BY user1
ORDER BY user1
