# Write your MySQL query statement below
WITH CTE as(SELECT *,MIN(event_date)first_date
FROM Activity 
GROUP BY player_id)

SELECT ROUND(SUM(CASE WHEN DATE_ADD(c.first_date, INTERVAL 1 DAY) = a.event_date THEN 1 ELSE 0 END)  / COUNT(DISTINCT a.player_id),2)fraction  
FROM CTE c
JOIN Activity a
ON c.player_id = a.player_id 