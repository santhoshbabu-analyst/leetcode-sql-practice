WITH cte as(
SELECT
    num 
FROM MyNumbers 
GROUP BY num 
HAVING COUNT(*)=1
)

SELECT
     MAX(num)num 
FROM cte;

