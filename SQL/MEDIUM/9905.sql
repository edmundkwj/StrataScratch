SELECT
first_name,
target
FROM salesforce_employees
WHERE target IN
      (SELECT MAX(target)
       FROM salesforce_employees
       WHERE manager_id = 13) 
       AND manager_id = 13
