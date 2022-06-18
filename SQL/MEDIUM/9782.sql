/*
Calculate the total revenue from each customer in March 2019. 
Include only customers who were active in March 2019. 
Output the revenue along with the customer id and sort the results based on the revenue in descending order.
https://platform.stratascratch.com/coding/9782-customer-revenue-in-march
*/

SELECT 
    cust_id,
    SUM(total_order_cost) AS revenue
FROM orders
WHERE order_date BETWEEN '2019-03-01' AND '2019-03-31'
GROUP BY cust_id
ORDER BY revenue DESC
