SELECt distinct facebook_posts.*
FROM facebook_reactions
JOIN facebook_posts
  ON facebook_reactions.poster = facebook_posts.poster 
 AND facebook_reactions.post_id = facebook_posts.post_id
WHERE reaction = 'heart';
