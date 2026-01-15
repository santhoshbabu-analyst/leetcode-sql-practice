WITH CTE as(SELECT 
    name,
    salary,
    departmentId,
    DENSE_RANK() OVER (PARTITION BY departmentId ORDER BY salary DESC) AS rnk
FROM Employee)

SELECT d.name Department ,c.name Employee,c.Salary
FROM CTE c
JOIN Department d
ON c.departmentId = d.id
WHERE rnk<=3;
