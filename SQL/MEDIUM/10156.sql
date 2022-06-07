SELECT
nationality,
COUNT(DISTINCT unit_id) AS num_units
FROM airbnb_units AS a
INNER JOIN airbnb_hosts AS b
        ON a.host_id = b.host_id
WHERE age < 30 AND unit_type = 'Apartment'
GROUP BY nationality
ORDER BY COUNT(DISTINCT unit_id) DESC
