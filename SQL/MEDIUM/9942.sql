/*
Find the Olympics with the highest number of athletes. 
The Olympics game is a combination of the year and the season, and is found in the 'games' column. 
Output the Olympics along with the corresponding number of athletes.
https://platform.stratascratch.com/coding/9942-largest-olympics
*/

SELECT 
    games, 
    COUNT(DISTINCT name) AS num_athletes 
FROM olympics_athletes_events
GROUP BY games
ORDER BY athletes DESC
LIMIT 1
