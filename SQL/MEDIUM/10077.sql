SELECT e.employee_title,
       e.sex,
       AVG(e.salary + b.ttl_bonus) AS avg_compensation
FROM sf_employee AS e
INNER JOIN
  (SELECT worker_ref_id,
          SUM(bonus) AS ttl_bonus
   FROM sf_bonus
   GROUP BY worker_ref_id) AS b
ON e.id = b.worker_ref_id
GROUP BY employee_title,
         sex
