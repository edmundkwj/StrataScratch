/*
Find the number of apartments per nationality that are owned by people under 30 years old.
Output the nationality along with the number of apartments.
Sort records by the apartments count in descending order.
https://platform.stratascratch.com/coding/10156-number-of-units-per-nationality
*/


SELECT
    nationality,
    COUNT(DISTINCT unit_id) AS num_units
FROM airbnb_units AS a
INNER JOIN airbnb_hosts AS b
        ON a.host_id = b.host_id
WHERE age < 30 AND unit_type = 'Apartment'
GROUP BY nationality
ORDER BY num_units DESC
