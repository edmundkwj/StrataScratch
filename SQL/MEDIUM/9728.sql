/*
You're given a dataset of health inspections. Count the number of violation in an inspection in 'Roxanne Cafe' for each year. 
If an inspection resulted in a violation, there will be a value in the 'violation_id' column. 
Output the number of violations by year in ascending order.
https://platform.stratascratch.com/coding/9728-inspections-that-resulted-in-violations
*/

SELECT 
    DATE_PART('year', inspection_date) as year,
    COUNT(violation_id) 
FROM  sf_restaurant_health_violations
WHERE business_name IN ('Roxanne Cafe')
GROUP BY  year
