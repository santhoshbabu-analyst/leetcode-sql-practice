WITH CTE AS(SELECT num,
LEAD(num,1) over()num1,
LEAD(num,2) over()num2
FROM Logs)

SELECT DISTINCT num ConsecutiveNums 
FROM CTE WHERE num = num1 
AND num = num2;