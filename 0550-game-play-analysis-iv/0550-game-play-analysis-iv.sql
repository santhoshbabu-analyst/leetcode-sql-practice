WITH cte as
(
SELECT
    player_id,
    MIN(event_date)first_game
FROM Activity 
GROUP BY player_id)

SELECT
    ROUND(SUM(CASE WHEN DATE_ADD(first_game, INTERVAL 1 DAY) = a.event_date THEN 1 ELSE 0 END)/COUNT(DISTINCT a.player_id),2)fraction  
FROM cte c
JOIN Activity a
ON c.player_id = a.player_id 
