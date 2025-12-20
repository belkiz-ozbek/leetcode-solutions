# Write your MySQL query statement below
WITH
Sum_of_Unit AS(
    SELECT product_name, SUM(o.unit) AS unit 
    FROM Products p
    INNER JOIN Orders o
    ON p.product_id = o.product_id 
    WHERE MONTH(o.order_date) = '2' AND YEAR(o.order_date) = '2020'
    GROUP BY p.product_name
)

SELECT *
FROM Sum_of_Unit
WHERE unit >= 100

