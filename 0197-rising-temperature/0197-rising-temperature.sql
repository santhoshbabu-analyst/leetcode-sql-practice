WITH CTE AS(SELECT *,
LAG(recordDate) OVER(ORDER BY recordDate)prev_recordDate,
LAG(temperature) OVER(ORDER BY recordDate)prev_temperature
FROM Weather)

SELECT id FROM CTE
WHERE temperature > prev_temperature 
AND DATEDIFF(recordDate,prev_recordDate) =1;

