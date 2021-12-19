SELECT
    DISTINCT business_name,
    CASE
        WHEN LOWER(business_name) LIKE '%restaurant%' THEN 'restaurant'
        WHEN LOWER(business_name) LIKE '%school%' THEN 'school'
        WHEN LOWER(business_name) LIKE '%cafe%' THEN 'cafe'
        WHEN LOWER(business_name) LIKE '%café%' THEN 'cafe'
        WHEN LOWER(business_name) LIKE '%coffee%' THEN 'cafe'
        ELSE 'other'
    END classification
FROM sf_restaurant_health_violations;
