# Write your MySQL query statement below
SELECT w1.Id 
FROM Weather w1
JOIN Weather W2
ON DATEDIFF(W1.recordDate,W2.recordDate) = 1
WHERE w1.temperature > w2.temperature;
