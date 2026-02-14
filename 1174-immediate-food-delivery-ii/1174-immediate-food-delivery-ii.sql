WITH cte as
(
SELECT 
    customer_id,
    MIN(order_date)first_ordr
FROM Delivery 
GROUP BY customer_id)

SELECT 
    ROUND(SUM(CASE WHEN c.first_ordr = d.customer_pref_delivery_date THEN 1 ELSE 0 END)*100.0/COUNT(*),2)immediate_percentage 
FROM cte c
JOIN Delivery d
ON c.customer_id = d.customer_id 
AND c.first_ordr = d.order_date 