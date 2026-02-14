WITH cte as(

SELECT
    id,
    recordDate,
    temperature,
    LAG(recordDate) OVER(ORDER BY recordDate)prev_date,
    LAG(temperature) OVER(ORDER BY recordDate)prev_temp
FROM Weather 
)

SELECT 
    id
FROM cte
WHERE temperature > prev_temp
AND DATEDIFF(recordDate,prev_date) = 1;