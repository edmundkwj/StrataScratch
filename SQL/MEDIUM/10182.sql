/*
Find the number of different street names for each postal code, for the given business dataset. For simplicity, just count the first part of the name if the street name has multiple words. 
For example, East Broadway can be counted as East. East Main and East Broadly may be counted both as East, which is fine for this question. 
Counting street names should also be case insensitive, meaning FOLSOM should be counted the same as Folsom. Lastly, consider that some street names have different structures. For example, Pier 39 is the same street as 39 Pier,  your solution should count both situations as Pier street.
Output the result along with the corresponding postal code. Order the result based on the number of streets in descending order and based on the postal code in ascending order.
https://platform.stratascratch.com/coding/10182-number-of-streets-per-zip-code
*/

SELECT 
    code, 
    COUNT(DISTINCT street) AS num 
FROM
(SELECT business_postal_code AS code,
    CASE
        WHEN business_address REGEXP '^[0-9]' = 1 THEN 
            LOWER(SUBSTRING_INDEX(SUBSTRING(business_address, POSITION(" " IN business_address) + 1), " ", 1))
        ELSE SUBSTRING_INDEX(business_address, " ", 1)
    END AS street
    FROM sf_restaurant_health_violations) x
WHERE code IS NOT NULL
GROUP BY code
ORDER BY num DESC, code