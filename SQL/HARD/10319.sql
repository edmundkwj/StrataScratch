WITH monthly_revenues AS (
SELECT 
to_char(created_at,'YYYY-MM') AS year_month,
sum(value) AS revenue
FROM sf_transactions
GROUP BY 1
ORDER BY 1
)

SELECT 
year_month,  
round((CAST(revenue AS numeric) - LAG(revenue,1) OVER (ORDER BY year_month)) / LAG(revenue,1) OVER (ORDER BY year_month)*100,2) AS pct_diff
FROM monthly_revenues;
