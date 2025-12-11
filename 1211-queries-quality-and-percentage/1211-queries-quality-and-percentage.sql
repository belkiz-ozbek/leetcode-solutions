# Write your MySQL query statement below
SELECT q.query_name, ROUND(SUM(rating / position) / COUNT(*), 2) AS quality, 
ROUND((SUM(q.rating < 3) / COUNT(*)) * 100, 2) AS poor_query_percentage
FROM Queries q
GROUP BY q.query_name

