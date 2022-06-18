/*
What were the top 10 ranked songs in 2010? 
Output the rank, group name, and song name but do not show the same song twice.
Sort the result based on the year_rank in ascending order.
https://platform.stratascratch.com/coding/9650-find-the-top-10-ranked-songs-in-2010
*/

SELECT
    DISTINCT
    song_name,
    year_rank,
    group_name
FROM billboard_top_100_year_end
WHERE year = 2010 and year_rank <= 10
ORDER BY year_rank;
