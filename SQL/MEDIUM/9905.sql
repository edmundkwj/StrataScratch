/*
Find the highest target achieved by the employee or employees who works under the manager id 13. 
Output the first name of the employee and target achieved. 
The solution should show the highest target achieved under manager_id=13 and which employee(s) achieved it.
https://platform.stratascratch.com/coding/9905-highest-target-under-manager
*/

SELECT
      first_name,
      target
FROM salesforce_employees
WHERE target IN
      (SELECT MAX(target)
       FROM salesforce_employees
       WHERE manager_id = 13) 