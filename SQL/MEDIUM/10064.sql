/*
Find the date with the highest total energy consumption from the Meta/Facebook data centers. 
Output the date along with the total energy consumption across all data centers.
https://platform.stratascratch.com/coding/10064-highest-energy-consumption
*/

WITH total AS (
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
WHERE total =  (SELECT 
                    MAX(total) 
                FROM totalsum
                )
