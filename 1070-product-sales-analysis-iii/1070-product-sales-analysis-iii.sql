WITH cte AS (
    SELECT *,
           DENSE_RANK() OVER (PARTITION BY product_id ORDER BY year) AS rn
    FROM Sales
)

SELECT product_id,
       year AS first_year,
       quantity,
       price
FROM cte
WHERE rn = 1;
