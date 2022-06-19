/*
Find the activity date and the pe_description of facilities with the name 'STREET CHURROS' and with a score of less than 95 points.
https://platform.stratascratch.com/coding/9688-churro-activity-date
*/

SELECT 
    activity_date,pe_description 
FROM los_angeles_restaurant_health_inspections
WHERE facility_name LIKE "%STREET%CHURROS%" 
  AND score < 95