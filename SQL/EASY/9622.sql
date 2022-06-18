/*
Find the average number of bathrooms and bedrooms for each city’s property types. Output the result along with the city name and the property type. 
https://platform.stratascratch.com/coding/9622-number-of-bathrooms-and-bedrooms
*/

SELECT 
    city,
    property_type,
    AVG(bathrooms) average_bathrooms,
    AVG(bedrooms) AS average_bedrooms
FROM airbnb_search_details
GROUP BY city,
         property_type
