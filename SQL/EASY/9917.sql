/*
Compare each employee's salary with the average salary of the corresponding department.
Output the department, first name, and salary of employees along with the average salary of that department.
https://platform.stratascratch.com/coding/9917-average-salaries
*/

SELECT 
        department,
        first_name,
        salary,
        AVG(salary) over (PARTITION BY department) AS average_salary
FROM employee
GROUP BY department,
         first_name,
         salary
