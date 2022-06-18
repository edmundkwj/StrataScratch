/*
What is the overall friend acceptance rate by date? 
Your output should have the rate of acceptances by the date the request was sent. Order by the earliest date to latest.
Assume that each friend request starts by a user sending (i.e., user_id_sender) a friend request to another user (i.e., user_id_receiver) that's logged in the table with action = 'sent'. 
If the request is accepted, the table logs action = 'accepted'. 
If the request is not accepted, no record of action = 'accepted' is logged.
https://platform.stratascratch.com/coding/10285-acceptance-rate-by-date
*/


WITH SENT AS (
SELECT 
    *
FROM fb_friend_requests
WHERE action = 'sent'
),

ACCEPT AS (
SELECT
    *
FROM fb_friend_requests
WHERE action = 'accepted')

SELECT 
    SENT.date, 
    COUNT(ACCEPT.user_id_receiver) / COUNT(SENT.user_id_sender) AS percentage
FROM SENT
LEFT JOIN ACCEPT
       ON SENT.user_id_receiver = ACCEPT.user_id_receiver
      AND SENT.user_id_sender = ACCEPT.user_id_sender
GROUP BY SENT.date