/*
Calculate each user's average session time. 
A session is defined as the time difference between a page_load and page_exit. 
For simplicity, assume a user has only 1 session per day and if there are multiple of the same events on that day, consider only the latest page_load and earliest page_exit. 
Output the user_id and their average session time.
https://platform.stratascratch.com/coding/10352-users-by-avg-session-time
*/

WITH user_sessions AS (
    SELECT 
        user_id,
        DATE(timestamp) AS date,
        MAX(CASE WHEN action = 'page_load' THEN timestamp ELSE NULL END) AS page_load,
        MIN(CASE WHEN action = 'page_exit' THEN timestamp ELSE NULL END) AS page_exit
    FROM facebook_web_log
    GROUP BY 
        user_id, 
        date
)

SELECT 
    user_id,
    AVG(TIMESTAMPDIFF(second, page_load, page_exit))  AS avg_session_duration
FROM user_sessions
WHERE page_load IS NOT NULL
  AND page_exit IS NOT NULL
GROUP BY 
    user_id
