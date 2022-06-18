/*
Find the customer with the highest daily total order cost between 2019-02-01 to 2019-05-01. 
If customer had more than one order on a certain day, sum the order costs on daily basis. Output customer's first name, total cost of their items, and the date.
For simplicity, you can assume that every first name in the dataset is unique.
https://platform.stratascratch.com/coding/9915-highest-cost-orders
*/

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
