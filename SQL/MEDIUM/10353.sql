/*
Find the titles of workers that earn the highest salary. 
Output the highest-paid title or multiple titles that share the highest salary.
https://platform.stratascratch.com/coding/10353-workers-with-the-highest-salaries
*/

SELECT
  t.worker_title
FROM worker w
JOIN title t 
  ON w.worker_id = t.worker_ref_id
WHERE w.salary = (SELECT 
                    MAX(salary) 
                  FROM worker)
