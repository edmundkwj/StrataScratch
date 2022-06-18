/*
Count the number of movies that Abigail Breslin was nominated for an oscar.
https://platform.stratascratch.com/coding/10128-count-the-number-of-movies-that-abigail-breslin-nominated-for-oscar
*/

SELECT 
    COUNT(*) 
FROM oscar_nominees
WHERE nominee = 'Abigail Breslin';
