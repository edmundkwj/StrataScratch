WITH SENT AS (
SELECT 
user_id_sender, 
user_id_receiver,
date
FROM fb_friend_requests
WHERE action = 'sent'
),

ACCEPT AS (
SELECT
user_id_sender, 
user_id_receiver,
date
FROM fb_friend_requests
WHERE action = 'accepted')

SELECT 
sent.date, 
count(accept.user_id_receiver) / count(sent.user_id_sender)::decimal AS percentage
FROM sent
LEFT JOIN accept
       ON sent.user_id_receiver = accept.user_id_receiver
      AND sent.user_id_sender = accept.user_id_sender
GROUP BY sent.date
ORDER BY sent.date
