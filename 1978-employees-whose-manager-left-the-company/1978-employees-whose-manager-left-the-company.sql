# Write your MySQL query statement below
SELECT e.employee_id 
FROM Employees e
LEFT JOIN Employees m
ON e.manager_id = m.employee_id 
WHERE e.salary < 30000 
AND e. manager_id IS not null
AND M.employee_id IS NULL
ORDER BY employee_id;

