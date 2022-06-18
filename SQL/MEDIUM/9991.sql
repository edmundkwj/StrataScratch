/*
Find songs that have ranked in the top position. 
Output the track name and the number of times it ranked at the top. 
Sort your records by the number of times the song was in the top position in descending order.
https://platform.stratascratch.com/coding/9991-top-ranked-songs
*/

SELECT
    trackname,
    COUNT(id) AS num_top
FROM spotify_worldwide_daily_song_ranking
WHERE position = 1
GROUP BY trackname
ORDER BY num_top DESC
