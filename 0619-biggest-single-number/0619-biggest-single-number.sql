# Write your MySQL query statement below
WITH CTE AS(SELECT*
FROM MYNUMBERS
GROUP BY num
having count(num)= 1)
SELECT MAX(num)num 
FROM CTE;


