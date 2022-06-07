SELECT 
DENSE_RANK() OVER(ORDER BY SUM(n_messages) DESC) as ranking, 
id_guest, 
SUM(n_messages) AS total_messages
FROM airbnb_contacts
GROUP BY id_guest
ORDER BY total_messages DESC
