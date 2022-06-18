/*
Find the total number of downloads for paying and non-paying users by date. l
Include only records where non-paying customers have more downloads than paying customers. 
The output should be sorted by earliest date first and contain 3 columns date, non-paying downloads, paying downloads.
https://platform.stratascratch.com/coding/10300-premium-vs-freemium
*/

SELECT 
    date,
    SUM(IF(paying_customer = 'no', downloads, 0)) AS non_paying,
    SUM(IF(paying_customer = 'yes', downloads, 0)) AS paying
FROM ms_download_facts AS mdf
LEFT JOIN ms_user_dimension AS mud
       ON mdf.user_id = mud.user_id
LEFT JOIN ms_acc_dimension AS mad
       ON mad.acc_id = mud.acc_id
GROUP BY date
HAVING non_paying > paying
ORDER BY date ASC










