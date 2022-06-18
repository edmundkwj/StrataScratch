/*
Find the base pay for Police Captains.
Output the employee name along with the corresponding base pay.
https://platform.stratascratch.com/coding/9972-find-the-base-pay-for-police-captains
*/

SELECT 
    employeename,
    basepay
FROM sf_public_salaries
WHERE jobtitle like '%CAPTAIN III (POLICE DEPARTMENT)'
