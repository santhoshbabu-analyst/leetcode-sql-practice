SELECT product_id, year AS first_year, quantity, price
FROM (
    SELECT *,
           DENSE_RANK() OVER(PARTITION BY product_id ORDER BY year) AS rn
    FROM Sales
) t
WHERE rn = 1;
