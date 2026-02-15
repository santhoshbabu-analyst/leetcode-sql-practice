WITH cte as
    (
SELECT 
    product_id,
    year,
    quantity,
    price,
    DENSE_RANK() OVER(PARTITION BY product_id ORDER BY year)rnk
FROM Sales 
)

SELECT 
    product_id,
    year first_year,
    quantity,
    price 
FROM cte
WHERE rnk = 1;