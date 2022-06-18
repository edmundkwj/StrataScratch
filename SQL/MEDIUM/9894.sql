/*
Find employees who are earning more than their managers. 
Output the employee's first name along with the corresponding salary.
https://platform.stratascratch.com/coding/9894-employee-and-manager-salaries
*/

SELECT 
    a.first_name,
    a.salary
FROM employee AS a
JOIN employee AS b
  ON a.manager_id = b.id
WHERE a.salary > b.salary;
