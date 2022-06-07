SELECT 
    a.first_name,
    a.salary
FROM employee AS a
JOIN employee AS b
  ON a.manager_id = b.id
WHERE a.salary > b.salary;
