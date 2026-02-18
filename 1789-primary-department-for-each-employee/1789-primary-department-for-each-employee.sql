WITH CTE as(
    SELECT *,
           COUNT(*) OVER (PARTITION BY employee_id) AS dept_count
    FROM Employee)

SELECT 
    employee_id,
    department_id 
FROM cte
WHERE dept_count = 1 OR primary_flag = "Y";

