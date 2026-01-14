# Write your MySQL query statement below
WITH CTE AS(SELECT s.user_id,COUNT(C.user_id)total,
SUM(CASE WHEN action =  "confirmed" THEN 1 ELSE 0 END)AS confirmation_rate 
FROM Signups s
LEFT JOIN Confirmations c
ON s.user_id  = c.user_id
GROUP BY s.user_id)

SELECT user_id,ROUND(COALESCE(confirmation_rate/total,0),2)confirmation_rate 
FROM CTE
