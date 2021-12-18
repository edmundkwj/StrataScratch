SELECT
facebook_employees.location as location,
AVG(facebook_hack_survey.popularity) as location
FROM facebook_employees
JOIN facebook_hack_survey
  ON facebook_employees.id = facebook_hack_survey.employee_id
 AND facebook_employees.gender = facebook_hack_survey.gender
GROUP BY location;
