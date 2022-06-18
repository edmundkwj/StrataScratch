/*
Write a query that calculates the difference between the highest salaries found in the marketing and engineering departments. 
Output just the absolute difference in salaries.
https://platform.stratascratch.com/coding/10308-salaries-differences
*/

SELECT
ABS((
   (SELECT 
        max(salary) 
    FROM db_employee
    LEFT JOIN db_dept 
           ON  db_dept.id = db_employee.department_id
    WHERE department = 'marketing')
    -
   (SELECT
        max(salary)
    FROM db_employee
    LEFT JOIN db_dept 
           ON db_dept.id = db_employee.department_id
    WHERE department = 'engineering')
)) AS salary_difference;