/*
Find all posts which were reacted to with a heart.
https://platform.stratascratch.com/coding/10087-find-all-posts-which-were-reacted-to-with-a-heart
*/

SELECT 
  DISTINCT 
  facebook_posts.*
FROM facebook_reactions
JOIN facebook_posts
  ON facebook_reactions.poster = facebook_posts.poster 
 AND facebook_reactions.post_id = facebook_posts.post_id
WHERE reaction = 'heart';
