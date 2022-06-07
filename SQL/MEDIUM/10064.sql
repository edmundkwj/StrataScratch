with total AS (
SELECT 
* 
FROM fb_eu_energy
UNION ALL
SELECT 
* 
FROM fb_asia_energy
UNION ALL
SELECT 
* 
FROM fb_na_energy
),

totalsum AS (
SELECT 
date,
SUM(consumption) AS total
FROM total 
GROUP BY date
)

SELECT 
* 
FROM totalsum 
WHERE total = (SELECT MAX(total) FROM totalsum)
