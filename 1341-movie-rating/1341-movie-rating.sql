# Write your MySQL query statement below

WITH 
Rating_Number AS(
    SELECT name, COUNT(*) AS rating_count
    FROM MovieRating mr
    INNER JOIN Users u
    ON mr.user_id = u.user_id 
    GROUP BY mr.user_id
),
Avg_Rating AS(
    SELECT title, AVG(rating) AS avg_rating
    FROM MovieRating mr
    INNER JOIN  Movies m
    ON mr.movie_id = m.movie_id
    WHERE created_at >= '2020-02-01' AND created_at < '2020-03-01'
    GROUP BY m.title
)

(
SELECT name AS results
FROM Rating_Number
ORDER BY rating_count DESC, name ASC
LIMIT 1
)

UNION ALL

(
SELECT title AS results
FROM Avg_Rating
ORDER BY avg_rating DESC, title ASC
LIMIT 1
);