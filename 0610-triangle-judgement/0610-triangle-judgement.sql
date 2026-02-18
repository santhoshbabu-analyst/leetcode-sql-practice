SELECT 
    x,
    Y,
    Z,
CASE
    WHEN X+Y>Z AND Y+Z>X AND Z+X>Y THEN "Yes"
    ELSE "No" END as triangle 
FROM Triangle;