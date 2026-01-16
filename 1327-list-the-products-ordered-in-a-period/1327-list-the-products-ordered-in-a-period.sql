# Write your MySQL query statement below
WITH CTE as(SELECT product_id,SUM(unit)unit
FROM Orders
WHERE YEAR(order_date) ="2020" AND MONTH(order_date) = "02"
GROUP BY product_id   
HAVING SUM(unit) >=100)
SELECT o.product_name,c.unit
FROM CTE c
JOIN Products  o
ON c.product_id  = o.product_id ;
