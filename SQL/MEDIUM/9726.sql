/*
Classify each business as either a restaurant, cafe, school, or other. A restaurant should have the word 'restaurant' in the business name. 
For cafes, either 'cafe', 'café', or 'coffee' can be in the business name. 'School' should be in the business name for schools. 
All other businesses should be classified as 'other'. Output the business name and the calculated classification.
https://platform.stratascratch.com/coding/9726-classify-business-type
*/

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
FROM sf_restaurant_health_violations
