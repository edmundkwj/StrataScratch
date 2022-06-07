SELECT 
games, 
athletes
FROM 
    (SELECT  
        games, 
        COUNT(distinct name) AS athletes
    FROM olympics_athletes_events
    GROUP BY games) AS A
ORDER BY 2 DESC
limit 1
