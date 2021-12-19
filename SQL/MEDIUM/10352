with user_sessions AS (
SELECT 
t1.user_id, 
t1.timestamp::date AS session_date,
MIN(t2.timestamp) - MAX(t1.timestamp) AS session_duration
FROM facebook_web_log AS t1
JOIN facebook_web_log AS t2
    ON t1.user_id = t2.user_id
    AND t1.timestamp::DATE = t2.timestamp::DATE
WHERE t1.action = 'page_load'
    AND t2.action = 'page_exit'
GROUP BY 1, 2
)

SELECT 
user_id,
AVG(session_duration) AS avg_session_duration
FROM user_sessions
GROUP BY user_id
