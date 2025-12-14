# Write your MySQL query statement below

#her product_id için en küçük yılı bul. 
#elde ettiğin tabloyu Sales tablosuyla join et. eşleşen satırları yazdır.

SELECT s.product_id, s.year AS first_year, s.quantity, s.price
FROM Sales s
INNER JOIN (
    SELECT product_id, MIN(year) AS first_year
    FROM Sales 
    GROUP BY product_id 
) f ON s.product_id = f.product_id AND s.year = f.first_year



