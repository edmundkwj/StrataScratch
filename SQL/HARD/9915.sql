SELECT
first_name, 
SUM(total_order_cost) AS total_order_cost,
order_date
FROM customers AS c
LEFT JOIN orders AS o
       ON c.id = o.cust_id
WHERE order_date BETWEEN '2019-02-01' AND '2019-05-01'    
GROUP BY 
        c.first_name,
        o.order_date
ORDER BY total_order_cost DESC
LIMIT 1
