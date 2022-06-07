SELECT 
department,
first_name,
salary,
AVG(salary) over (PARTITION BY department) AS average_salary
FROM employee
GROUP BY department,
        first_name,
        salary
