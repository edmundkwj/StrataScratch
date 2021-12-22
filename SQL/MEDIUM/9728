SELECT 
DATE_PART('year', inspection_date) as year,
COUNT(violation_id) 
FROM  sf_restaurant_health_violations
WHERE business_name IN ('Roxanne Cafe')
GROUP BY  year
