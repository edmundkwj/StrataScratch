WITH users_pay_status AS (
SELECT 
user_id, 
paying_customer
FROM ms_user_dimension AS a
JOIN ms_acc_dimension AS b
ON a.acc_id = b.acc_id
),

temp AS (
SELECT
a.*, 
b.paying_customer
FROM ms_download_facts AS a
JOIN users_pay_status AS b
  ON a.user_id = b.user_id
),

paying_downloads_table AS (
SELECT 
date, 
SUM(downloads) AS paying_downloads
FROM temp
WHERE paying_customer = 'yes'
GROUP BY 1
),

non_paying_downloads_table AS (
SELECT 
date, 
SUM(downloads) AS non_paying_downloads
FROM temp
WHERE paying_customer = 'no'
GROUP BY 1
)

SELECT 
a.date, 
paying_downloads, 
non_paying_downloads
FROM paying_downloads_table a
JOIN non_paying_downloads_table b
  ON a.date = b.date
WHERE paying_downloads < non_paying_downloads
ORDER BY 1
