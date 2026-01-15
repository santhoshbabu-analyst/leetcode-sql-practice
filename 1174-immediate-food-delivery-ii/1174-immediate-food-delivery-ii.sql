# Write your MySQL query statement below
WITH CTE AS(SELECT *, MIN(order_date)first_order
FROM Delivery 
GROUP BY customer_id)

SELECT ROUND(SUM(CASE WHEN d.order_date = d.customer_pref_delivery_date THEN 1 ELSE 0 END)*100.0/COUNT(*),2)immediate_percentage 
FROM CTE c
JOIN Delivery d
ON c.customer_id = d.customer_id 
AND c.first_order = d.order_date 
