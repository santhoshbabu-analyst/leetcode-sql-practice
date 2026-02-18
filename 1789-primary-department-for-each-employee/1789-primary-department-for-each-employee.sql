WITH cte AS (
    SELECT *,
           COUNT(*) OVER (PARTITION BY employee_id) AS dept_count
    FROM Employee
)

SELECT employee_id, department_id
FROM cte
WHERE primary_flag = 'Y'
   OR dept_count = 1;
