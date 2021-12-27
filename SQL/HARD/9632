SELECT 
Popularity_rating,
MIN(price),
AVG(price),
MAX(price)
FROM
(SELECT 
concat(price, room_type, host_since, zipcode, number_of_reviews) AS host_id,number_of_reviews,price,
  CASE WHEN number_of_reviews=0 THEN 'New' 
       WHEN number_of_reviews BETWEEN 1 AND 5 THEN 'Rising' 
       WHEN number_of_reviews BETWEEN 6 AND 15 THEN 'Trending up' 
       WHEN number_of_reviews BETWEEN 16 AND 40 THEN 'Popular' 
       WHEN number_of_reviews >40 THEN 'Hot'
       END AS Popularity_rating
FROM airbnb_host_searches
GROUP BY 1,2,3) AS f
GROUP BY Popularity_rating
